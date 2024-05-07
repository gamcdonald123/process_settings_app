require 'open-uri'
require 'json'

class MaintainxApiClient
  def initialize(token: ENV['MAINTAINX_API_TOKEN'])
    @token = token
    @gfc = '33504'
    @gph = '34614'
    @gnw = '34613'
  end

  def asset_list_with_site(site_id, url)
    # puts "Token: #{@token}"
    # puts "Site: #{site_id}"
    # puts "URL: #{url}"
    puts "Fetching assets for site ID: #{site_id}..."
    assets = []
    count = 0
    loop do
      uri = URI(url)
      json_response = URI.open(uri,
                               'Authorization' => "Bearer #{@token}",
                               'x-organization-id' => site_id)
      data = JSON.parse(json_response.read)
      if data['assets']
        # Tag each asset with the site ID before adding to the list
        tagged_assets = data['assets'].map { |asset| asset.merge('site' => site_id) }
        assets.concat(tagged_assets)
      end

      break unless data['nextCursor'] && data['nextPageUrl']
      url = "https://api.getmaintainx.com#{data['nextPageUrl']}"
      count += 1
      puts count
    end
    assets
  end

  def asset_list
    @all_assets ||= []
    base_url = 'https://api.getmaintainx.com/v1/assets?expand=asset_types&expand=extra_fields'

    # Fetch and tag assets for each site
    [@gfc, @gph, @gnw].each do |site_id|
      @all_assets.concat(asset_list_with_site(site_id, base_url))
    end
    # puts @all_assets
    @all_assets
  end


  def get_assets
    all_assets = asset_list

    # filter for tools
    tools = all_assets.select do |asset|
      asset['assetTypes'].include?('Mould Tool') || asset['assetTypes'].include?('Extrusion Tool')
    end

    # filter for machines
    machines = all_assets.select do |asset|
      asset['assetTypes'].include?('Injection Moulding Machine') || (asset['assetTypes'].include?('Extrusion Line') && asset['name'].include?('Line'))
    end

    # return tools and machines
    { tools: tools, machines: machines }
  end

  def save_assets_to_database
    tool_count = 0
    machine_count = 0
    assets = get_assets
    assets[:tools].each do |tool|
      next if Tool.find_by(name: tool['name'])

      new_tool = Tool.create(
        name: tool['name'],
        maintainx_id: tool['id'],
        tool_type: if tool['assetTypes'].include?('Mould Tool')
                    'Mould Tool'
                  elsif tool['assetTypes'].include?('Extrusion Tool')
                    'Extrusion Tool'
                  end
      )
      tool_count += 1 if new_tool.persisted?
    end

    assets[:machines].each do |machine|
      # Only proceed if machine does not already exist in the database
      next if Machine.exists?(machine_name: machine['name'])

      # Map site ID to a meaningful site name or directly store the site ID
      site_id = case machine['site']
                  when '33504' then 1
                  when '34614' then 2
                  when '34613' then 3
                end

      new_machine = Machine.create(
        machine_name: machine['name'],
        maintainx_id: machine['id'],
        machine_type: if machine['assetTypes'].include?('Injection Moulding Machine')
                        'Injection Moulding Machine'
                      elsif machine['assetTypes'].include?('Extrusion Line') && machine['name'].include?('Line')
                        'Extrusion Line'
                      end,
        site_id: site_id, # Storing the site name or ID as determined above
        manufacturer: machine['extraFields']['Manufacturer'],
        manufacture_year: machine['extraFields']['Year'],
        tonnage: machine['extraFields']['Tonnage']
      )

      machine_count += 1 if new_machine.persisted?
    end

    if machine_count.positive?
      puts "Machines added to database: #{machine_count}"
    else
      puts 'No machines added to the database.'
    end

    if tool_count.positive?
      puts "Tools added to database: #{tool_count}"
    else
      puts 'No tools added to the database.'
    end
  end
end

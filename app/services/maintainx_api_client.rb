require 'open-uri'
require 'json'

class MaintainxApiClient
  def initialize(token: ENV['MAINTAINX_API_TOKEN'])
    @token = token
    @gfc = '33504'
    @gph = '34614'
    @gnw = '34613'
  end

  def asset_list
    return @all_assets if @all_assets

    @all_assets = []
    url = 'https://api.getmaintainx.com/v1/assets?expand=asset_types'
    count = 0

    puts 'GFC...'
    loop do
      uri = URI(url)
      json_response = URI.open(uri,
                               'Authorization' => "Bearer #{@token}",
                               'x-organization-id' => @gfc)
      data = JSON.parse(json_response.read)

      @all_assets.concat(data['assets']) if data['assets']

      break unless data['nextCursor'] && data['nextPageUrl']

      url = "https://api.getmaintainx.com#{data['nextPageUrl']}"
      count += 1
      puts count
    end

    url = 'https://api.getmaintainx.com/v1/assets?expand=asset_types'

    puts 'GPH...'
    loop do
      uri = URI(url)
      json_response = URI.open(uri,
                               'Authorization' => "Bearer #{@token}",
                               'x-organization-id' => @gph)
      data = JSON.parse(json_response.read)

      @all_assets.concat(data['assets']) if data['assets']

      break unless data['nextCursor'] && data['nextPageUrl']

      url = "https://api.getmaintainx.com#{data['nextPageUrl']}"
      count += 1
      puts count
    end

    url = 'https://api.getmaintainx.com/v1/assets?expand=asset_types'

    puts 'GNW...'
    loop do
      uri = URI(url)
      json_response = URI.open(uri,
                               'Authorization' => "Bearer #{@token}",
                               'x-organization-id' => @gnw)
      data = JSON.parse(json_response.read)

      @all_assets.concat(data['assets']) if data['assets']

      break unless data['nextCursor'] && data['nextPageUrl']

      url = "https://api.getmaintainx.com#{data['nextPageUrl']}"
      count += 1
      puts count
    end

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
    count = 0
    assets = get_assets
    # assets[:tools].each do |tool|
    #   next if Tool.find_by(name: tool['name'])

    #   new_tool = Tool.create(
    #     name: tool['name'],
    #     maintainx_id: tool['id'],
    #     tool_type: if tool['assetTypes'].include?('Mould Tool')
    #                 'Mould Tool'
    #               elsif tool['assetTypes'].include?('Extrusion Tool')
    #                 'Extrusion Tool'
    #               end
    #   )
    #   count += 1 if new_tool.persisted?
    # end
    # if count > 0
    #   puts "Tools added to database: #{count}"
    # else
    #   puts 'No tools added to the database.'
    # end

    assets[:machines].each do |machine|
      # next if Machine.find_by(machine_name: machine['name'])

      new_machine = Machine.create(
        machine_name: machine['name'],
        maintainx_id: machine['id'],
        machine_type: if machine['assetTypes'].include?('Injection Moulding Machine')
                      'Injection Moulding Machine'
                      elsif machine['assetTypes'].include?('Extrusion Line') && machine['name'].include?('Line')
                      'Extrusion Line'
                      end
      )
      count += 1 if new_machine.persisted?
    end
    if count.positive?
      puts "machines added to database: #{count}"
    else
      puts 'No machines added to the database.'
    end
  end
end

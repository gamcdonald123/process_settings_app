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

  def filtered_assets_by_type
    all_assets = asset_list
    tools = all_assets.select do |asset|
      asset['assetTypes'].include?('Mould Tool') || asset['assetTypes'].include?('Extrusion Tool')
    end
  end

  def save_mould_tools_to_database
    mould_tools = filtered_assets_by_type
    mould_tools.each do |tool|
      Tool.create(
        name: tool['name'],
        maintainx_id: tool['id'],
        tool_type: if tool['assetTypes'].include?('Mould Tool')
                     'Mould Tool'
                   elsif tool['assetTypes'].include?('Extrusion Tool')
                     'Extrusion Tool'
                   end
      )
    end
  end
end

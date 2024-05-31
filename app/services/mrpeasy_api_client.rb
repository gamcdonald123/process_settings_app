require 'open-uri'
require 'json'

class MrpApiClient
  def initialize(gfc_key: ENV['GFC_API_KEY'], gfc_secret: ENV['GFC_API_SECRET'], gph_key: ENV['GPH_API_KEY'],
    gph_secret: ENV['GPH_API_SECRET'], gnw_key: ENV['GNW_API_KEY'], gnw_secret: ENV['GNW_API_SECRET'])

    @gfc_key = gfc_key
    @gfc_secret = gfc_secret
    @gph_key = gph_key
    @gph_secret = gph_secret
    @gnw_key = gnw_key
    @gnw_secret = gnw_secret
  end

  def articles(site)
    if site.id == 1
      @key = @gfc_key
      @secret = @gfc_secret
    elsif site.id == 2
      @key = @gph_key
      @secret = @gph_secret
    else
      @key = @gnw_key
      @secret = @gnw_secret
    end

    # puts "Site: #{site.site_name}"
    # puts "Key: #{@key}"
    # puts "Secret: #{@secret}"

    uri = URI("https://api.mrpeasy.com/rest/v1/routings?code=ROU-05081")
    begin
      response = URI.open(uri, http_basic_authentication: [@key, @secret])
      data = JSON.parse(response.read)
    rescue OpenURI::HTTPError => e
      if e.io.status[0] == '429'
        puts "429 received, waiting 11 seconds and retrying"
        retry
      end
    end

    product_id = data[0]['product_id']
    tool_code = data[0]['operations'][0]['description'].upcase

    puts "Product ID: #{data[0]['product_id']}"
    puts "Tool code: #{data[0]['operations'][0]['description'].upcase}"

    puts 'Fetching article details...'

    uri = URI("https://api.mrpeasy.com/rest/v1/items?product_id=#{product_id}")
    begin
      response = URI.open(uri, http_basic_authentication: [@key, @secret])
      data = JSON.parse(response.read)
    rescue OpenURI::HTTPError => e
      if e.io.status[0] == '429'
        puts "429 received, waiting 11 seconds and retrying"
        retry
      end
    end

    product_title = data[0]['code']
    product_description = data[0]['title']

    puts 'Done...'

    puts "Product Title: #{product_title}"
    puts "Product Description: #{product_description}"
    puts "Product group: #{data[0]['group_code']}"
  end

end

namespace :sync do
  desc 'Fetches assets from Maintainx API and updates the database'
  task tools: :environment do
    api_client = MaintainxApiClient.new(token: ENV['MAINTAINX_API_TOKEN'])
    api_client.save_assets_to_database
  end
end

require 'open-uri'
require 'json'

class IntouchApiClient
  def initialize(token: ENV['INTOUCH_API_TOKEN'])
    @token = token
  end

  # Fetch a list of all the machines
  def fetch_machines
    uri = URI("https://i4api.azurewebsites.net/api/Machine")
    json_response = URI.open(uri, "Authorization" => "Bearer #{@token}")
    JSON.parse(json_response.read)
  rescue StandardError => e
    { error: "Failed to fetch status: #{e.message}" }
  end

  # Fetch a list of all machines
  def parse_machine_list
    response = fetch_machines

    # Initialize an empty hash to store the mappings
    machine_hash = {}

    # Directly iterate over the array
    response.each do |machine|
      # Extract the machine name and ID
      machine_name = machine["MachineName"]
      machine_id = machine["MachineID"]
      # Store the name and ID in the hash
      machine_hash[machine_name] = machine_id
    end

    # Return the completed hash mapping machine names to their IDs
    machine_hash
  rescue StandardError => e
    # Handle any exceptions that occur during processing
    { error: "Error parsing machine list: #{e.message}" }
  end

end

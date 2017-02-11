require 'httparty'
require '../../config/secrets'

def find_user_id(username)
  url = "https://slack.com/api/users.list?token=#{ORG_TOKEN}&pretty=1"
  response = HTTParty.get(url)
  response_hash = response.to_h

  response_hash["members"].find{|user| user["name"] == username}["id"]
end

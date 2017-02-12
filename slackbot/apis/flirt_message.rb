require "httparty"

def flirt_call(username, message)
  base_url = "https://slack.com/api/chat.postMessage?token=#{ENV['SLACK_API_TOKEN']}"
  bot_params = "&username=%40flirtbot&icon_emoji=%3Alips%3A"
  message_params = "&channel=%40#{username}&text=#{message}&as_user=false&pretty=1"
  HTTParty.get(base_url + bot_params + message_params)
end

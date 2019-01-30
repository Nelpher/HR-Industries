
require 'facebook/messenger'
include Facebook::Messenger
Facebook::Messenger::Subscriptions.subscribe(
  access_token: access_token,
  subscribed_fields: ENV["ACCESS_TOKEN"]
)

Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end
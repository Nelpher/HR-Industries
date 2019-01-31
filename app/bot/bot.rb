require 'facebook/messenger'
const PAGE_ACCESS_TOKEN = process.env.PAGE_ACCESS_TOKEN;
app.get('/webhook', (req, res) => {
  
  const VERIFY_TOKEN = "boubou";
  
  ...
  
})

include Facebook::Messenger
Facebook::Messenger::Subscriptions.subscribe(
  access_token: access_token,
  subscribed_fields: %w[ACCESS_TOKEN]
)


Bot.on :message do |message|
    if message.text.include? "Bonjour"
       message.reply(text: "Salut") 
   elsif message.text.include? "Bonne nuit"
        message.reply(text: "Dors bien") 
    else
        message.reply(text: 'Reponse par defaut')
    end
  
end
require 'facebook/messenger'

include Facebook::Messenger


Bot.on :message do |message|
    if message.text.include? "Bonjour"
       message.reply(text: "Salut") 
   elsif message.text.include? "Bonne nuit"
        message.reply(text: "Dors bien") 
    else
        message.reply(text: 'Reponse par defaut')
    end
  
end
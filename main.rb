require 'telegram/bot'
require './buttons'
require './menu_selector'

token = '449940726:AAEJDu-CA2PGXqABxR_X2WgFFcHLkFxzDGQ'






Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
      when '/start'
        Button.main_menu(message, bot)
    end
    Menu_selector.menu_var(message, bot)

    end
  end

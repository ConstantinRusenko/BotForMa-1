require 'telegram/bot'
require './buttons'

token = '449940726:AAEJDu-CA2PGXqABxR_X2WgFFcHLkFxzDGQ'


module Global

  class << self
    attr_accessor :order_table_time, :num_fetch
  end
end



Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
      when '/start'
        Button.main_menu(message, bot)

    end
    end
  end

require 'telegram/bot'
require './Menu_button'

token = '449940726:AAEJDu-CA2PGXqABxR_X2WgFFcHLkFxzDGQ'


module Global

  class << self
    attr_accessor :order_table_time,
                  :client_name,
                  :client_phone,
                  :order_quantity,
                  :pizza,
                  :order_cart,
                  :address,
                  :restaurant
  end
end
Global.order_cart = []

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
      when '/start'
        Menu_button.user_info(message, bot)
    end
  end
end

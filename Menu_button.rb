require_relative 'Restaurants/Restaurant1'
require_relative 'Restaurants/Farodelporto'
require './Getuserinfo'


class Menu_button

def self.user_info(message, bot)

  no_but = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: 'Привет =)', reply_markup: no_but)
  Getuserinfo.get_client_name(message, bot)
  bot.api.send_message(chat_id: message.chat.id, text: 'А телефончик? Тоже для заказа =)')
  Getuserinfo.get_client_phone(message, bot)

end

def self.main_menu(message, bot)
  Global.order_cart = []
  text = 'Выбирай что хочешь =) Не стесняйся'
  buttons = [
    Telegram::Bot::Types::KeyboardButton.new(text: '🍝Итальянская кухня🍕'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🍱Японская кухня🍣'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🍷Грузинская кухня🍖'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🍞Украинская кухня🍲'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🍺Немецкая кухня🥓'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🍺Все рестораны🥓'),
  ]
  markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

  bot.listen do |message|

    case message.text

      when '/start'
        Menu_button.user_info(message, bot)

      when '🍝Итальянская кухня🍕'
        Menu_button.ita_menu(message, bot)

      when '🍱Японская кухня🍣'
        Menu_button.jap_menu(message, bot)

      when '🍷Грузинская кухня🍖'
        Menu_button.geo_menu(message, bot)

      when '🍞Украинская кухня🍲'
        Menu_button.ukr_menu(message, bot)

      when '🍺Немецкая кухня🥓'
        Menu_button.ger_menu(message, bot)

      when '🍺Все рестораны🥓'
        Menu_button.all_menu(message, bot)

    end
  end

end

def self.ita_menu(message, bot)
  text = 'Значит Итальяно?😏'
  buttons = [
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant1'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant2'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant3'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад в меню')
  ]
  markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

  bot.listen do |message|
    case message.text

      when '/start'
        Menu_button.user_info(message, bot)

      when 'Restaurant1'
        Restaurant1.menu_res(message, bot)
      when '🔙Назад в меню'
        Menu_button.main_menu(message, bot)

    end
  end

end

def self.jap_menu(message, bot)
  text = 'Японская?'
  buttons = [
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant1'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant2'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant3'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад в меню')
  ]
  markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

  bot.listen do |message|

    case message.text

      when '/start'
        Menu_button.user_info(message, bot)

      when '🔙Назад в меню'
        Menu_button.main_menu(message, bot)

    end
  end
end

def self.geo_menu(message, bot)
  text = 'Грузиниш'
  buttons = [
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant1'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant2'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant3'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад в меню')
  ]
  markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

  bot.listen do |message|

    case message.text

      when '/start'
        Menu_button.user_info(message, bot)

      when '🔙Назад в меню'
        Menu_button.main_menu(message, bot)

    end
  end
end

def self.ukr_menu(message, bot)
  text = 'Украино'
  buttons = [
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant1'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant2'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant3'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад в меню')
  ]
  markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

  bot.listen do |message|

    case message.text

      when '/start'
        Menu_button.user_info(message, bot)

      when '🔙Назад в меню'
        Menu_button.main_menu(message, bot)

    end
  end
end

def self.ger_menu(message, bot)
  text = 'Немецкая'
  buttons = [
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant1'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant2'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant3'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад в меню')
  ]
  markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

  bot.listen do |message|

    case message.text

      when '/start'
        Menu_button.user_info(message, bot)

      when '🔙Назад в меню'
        Menu_button.main_menu(message, bot)

    end
  end
end

def self.all_menu(message, bot)
  text = 'Все рестораны'
  buttons = [
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant1'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Farodelporto'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restaurant3'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад в меню')
  ]
  markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

  bot.listen do |message|

    case message.text

      when '/start'
        Menu_button.user_info(message, bot)

      when 'Restaurant1'
        Restaurant1.menu_res(message, bot)

      when 'Farodelporto'
        Farodelporto.menu_res(message, bot)

      when '🔙Назад в меню'
        Menu_button.main_menu(message, bot)

    end
  end
end

def self.stop_button(message, bot)
  stop_button = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: 'Для заказа напишите /start', reply_markup: stop_button)
  Global.order_table_time = nil
  Global.client_address = nil
  Global.order_quantity = nil
  Global.pizza = nil
  Global.order_cart = []
  Global.restaurant = nil
end

end

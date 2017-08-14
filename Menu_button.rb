require_relative 'Restourants/Restourant1'

class Menu_button

def self.main_menu(message, bot)

  text = 'Выбери чего ты хочешь =) Не стесняйся '
  buttons = [
    Telegram::Bot::Types::KeyboardButton.new(text: '🍝Итальянская кухня🍕'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🍱Японская кухня🍣'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🍷Грузинская кухня🍖'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🍞Украинская кухня🍲'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🍺Немецкая кухня🥓')
  ]
  markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

  bot.listen do |message|
    case message.text

      when '/start'
        Menu_button.main_menu(message, bot)

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

    end
  end

end

def self.ita_menu(message, bot)
  text = 'Значит Итальяно?😏'
  buttons = [
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restourant1'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restourant2'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restourant3'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад в меню')
  ]
  markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

  bot.listen do |message|
    case message.text

      when '/start'
        Menu_button.main_menu(message, bot)

      when 'Restourant1'
        Restourant1.ita_menu_res_1(message, bot)

      when '🔙Назад в меню'
        Menu_button.main_menu(message, bot)

    end
  end

end

def self.jap_menu(message, bot)
  text = 'Японская?'
  buttons = [
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restourant1'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restourant2'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restourant3'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад в меню')
  ]
  markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

  bot.listen do |message|
    case message.text

      when '/start'
        Menu_button.main_menu(message, bot)

      when '🔙Назад в меню'
        Menu_button.main_menu(message, bot)

    end
  end
end

def self.geo_menu(message, bot)
  text = 'Грузиниш'
  buttons = [
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restourant1'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restourant2'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restourant3'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад в меню')
  ]
  markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

  bot.listen do |message|
    case message.text

      when '/start'
        Menu_button.main_menu(message, bot)

      when '🔙Назад в меню'
        Menu_button.main_menu(message, bot)

    end
  end
end

def self.ukr_menu(message, bot)
  text = 'Украино'
  buttons = [
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restourant1'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restourant2'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restourant3'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад в меню')
  ]
  markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

  bot.listen do |message|
    case message.text

      when '/start'
        Menu_button.main_menu(message, bot)

      when '🔙Назад в меню'
        Menu_button.main_menu(message, bot)

    end
  end
end

def self.ger_menu(message, bot)
  text = 'Немецкая'
  buttons = [
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restourant1'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restourant2'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Restourant3'),
    Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад в меню')
  ]
  markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

  bot.listen do |message|
    case message.text

      when '/start'
        Menu_button.main_menu(message, bot)

      when '🔙Назад в меню'
        Menu_button.main_menu(message, bot)

    end
  end
end

def self.stop_button(message, bot)
  stop_button = Telegram::Bot::Types::ReplyKeyboardRemove.new(remove_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: 'Для старта напишите /start', reply_markup: stop_button)
end
end

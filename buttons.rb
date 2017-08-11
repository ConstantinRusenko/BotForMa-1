class Button

  def self.phone_check(message, bot)
    phone = [Telegram::Bot::Types::KeyboardButton.new(text: 'Give me your phone number', request_contact: true)]
      phone_markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: phone)
      bot.api.send_message(chat_id: message.chat.id, text: 'Hey!', reply_markup: phone_markup)
  end

  def self.main_menu(message, bot)
    text = "Выбери чего ты хочешь =) Не стисняйся "
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: "🍝Итальянская кухня🍕"),
      Telegram::Bot::Types::KeyboardButton.new(text: "🍱Японская кухня🍣"),
      Telegram::Bot::Types::KeyboardButton.new(text: "🍷Грузинская кухня🍖"),
      Telegram::Bot::Types::KeyboardButton.new(text: "🍞Украинская кухня🍲"),
      Telegram::Bot::Types::KeyboardButton.new(text: "🍺Немецкая кухня🥓")
]
     markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
     bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)
  end

  def self.ita_menu(message, bot)
    text = "Значит Итальяно?😏"
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: "Restourant1"),
      Telegram::Bot::Types::KeyboardButton.new(text: "Restourant2"),
      Telegram::Bot::Types::KeyboardButton.new(text: "Restourant3"),
      Telegram::Bot::Types::KeyboardButton.new(text: "🔙Назад в меню")
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)
  end

  def self.jap_menu(message, bot)
    text = "Выбери чего ты хочешь =) Не стисняйся "
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: "Restourant1"),
      Telegram::Bot::Types::KeyboardButton.new(text: "Restourant2"),
      Telegram::Bot::Types::KeyboardButton.new(text: "Restourant3"),
      Telegram::Bot::Types::KeyboardButton.new(text: "🔙Назад в меню")
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)
  end

  def self.geo_menu(message, bot)
    text = "Выбери чего ты хочешь =) Не стисняйся "
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: "Restourant1"),
      Telegram::Bot::Types::KeyboardButton.new(text: "Restourant2"),
      Telegram::Bot::Types::KeyboardButton.new(text: "Restourant3"),
      Telegram::Bot::Types::KeyboardButton.new(text: "🔙Назад в меню")
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)
  end

  def self.ukr_menu(message, bot)
    text = "Выбери чего ты хочешь =) Не стисняйся "
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: "Restourant1"),
      Telegram::Bot::Types::KeyboardButton.new(text: "Restourant2"),
      Telegram::Bot::Types::KeyboardButton.new(text: "Restourant3"),
      Telegram::Bot::Types::KeyboardButton.new(text: "🔙Назад в меню")
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)
  end

  def self.ger_menu(message, bot)
    text = "Выбери чего ты хочешь =) Не стисняйся "
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: "Restourant1"),
      Telegram::Bot::Types::KeyboardButton.new(text: "Restourant2"),
      Telegram::Bot::Types::KeyboardButton.new(text: "Restourant3"),
      Telegram::Bot::Types::KeyboardButton.new(text: "🔙Назад в меню")
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)
  end

  def self.ita_menu_res_1(message, bot)
    text = "Вы к нам или мы к вам ?"
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: "📦Доставка🛵"),
      Telegram::Bot::Types::KeyboardButton.new(text: "🕯Заказать столик📝"),
      Telegram::Bot::Types::KeyboardButton.new(text: "💙Отзывы💜"),
      Telegram::Bot::Types::KeyboardButton.new(text: "🔙Назад в меню")
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)
  end

end

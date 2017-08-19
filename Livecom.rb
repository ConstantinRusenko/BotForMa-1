class Live_communication

  def self.list(message, bot)
    a = message.text.to_s.downcase
    case a

      when "что такое карбонара?", "карбонара?", "что в карбонаре?", "информация о карбонаре"
        button = Telegram::Bot::Types::InlineKeyboardButton.new(
          text: 'Нажми меня',
          url: 'https://uk.wikipedia.org/wiki/%D0%9A%D0%B0%D1%80%D0%B1%D0%BE%D0%BD%D0%B0%D1%80%D0%B0'
        )
        lable = 'Информация о карбонаре'
        Live_communication.buttons(message, bot, button, lable)

      when "что такое салат цезар?", "салат цезар?", "что в салате цезар?", "информация о салате цезар"
        button = Telegram::Bot::Types::InlineKeyboardButton.new(
          text: 'Нажми меня',
          url: 'https://uk.wikipedia.org/wiki/Цезар_(салат)'
        )
        lable = 'Информация о салате цезар'
        Live_communication.buttons(message, bot, button, lable)

      when "что такое салат цезар?", "салат цезар?", "что в салате цезар?", "информация о салате цезар"
        button = Telegram::Bot::Types::InlineKeyboardButton.new(
          text: 'Нажми меня',
          url: 'https://uk.wikipedia.org/wiki/Фрикасе'
        )
        lable = 'Информация о салате цезар'
        Live_communication.buttons(message, bot, button, lable)

      when "где находиться фародельпорто", "где находиться фаро дель порто", "где найти фародельпорто"
        bot.api.send_location(chat_id: message.chat.id, latitude: -37.807416, longitude: 144.985339)

    end

  end

  def self.buttons(message, bot, button, lable)
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: button)
    bot.api.send_message(chat_id: message.chat.id, text: lable, reply_markup: markup)
  end
end


#bot.api.send_location(chat_id: message.chat.id, latitude: -37.807416, longitude: 144.985339)

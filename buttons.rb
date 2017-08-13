require './BDcontroller'
class Button

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
          Button.main_menu(message, bot)

        when '🍝Итальянская кухня🍕'
          Button.ita_menu(message, bot)

        when '🍱Японская кухня🍣'
          Button.jap_menu(message, bot)

        when '🍷Грузинская кухня🍖'
          Button.geo_menu(message, bot)

        when '🍞Украинская кухня🍲'
          Button.ukr_menu(message, bot)

        when '🍺Немецкая кухня🥓'
          Button.ger_menu(message, bot)

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
          Button.main_menu(message, bot)

        when 'Restourant1'
          Button.ita_menu_res_1(message, bot)

        when '🔙Назад в меню'
          Button.main_menu(message, bot)

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
          Button.main_menu(message, bot)

        when '🔙Назад в меню'
          Button.main_menu(message, bot)

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
          Button.main_menu(message, bot)

        when '🔙Назад в меню'
          Button.main_menu(message, bot)

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
          Button.main_menu(message, bot)

        when '🔙Назад в меню'
          Button.main_menu(message, bot)

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
          Button.main_menu(message, bot)

        when '🔙Назад в меню'
          Button.main_menu(message, bot)

      end
    end
  end

  def self.ita_menu_res_1(message, bot)
    text = 'Вы к нам или мы к вам ?'
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: '📦Доставка🛵'),
      Telegram::Bot::Types::KeyboardButton.new(text: '🕯Заказать столик📝'),
      Telegram::Bot::Types::KeyboardButton.new(text: '💙Отзывы💜'),
      Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад в меню')
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

    bot.listen do |message|
      case message.text

        when '/start'
          Button.main_menu(message, bot)

        when '📦Доставка🛵'
          Button.ita_menu_res_1_deli(message, bot)

        when '🔙Назад в меню'
          Button.main_menu(message, bot)

        when '🕯Заказать столик📝'
          Button.order_table(message, bot)

      end
    end
  end

  def self.ita_menu_res_1_deli(message, bot)
    text = 'Значит мы к вам =)'
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: 'Пицца'),
      Telegram::Bot::Types::KeyboardButton.new(text: 'Паста'),
      Telegram::Bot::Types::KeyboardButton.new(text: 'Напитки'),
      Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад в меню')
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

    bot.listen do |message|
      case message.text

        when '/start'
          Button.main_menu(message, bot)

        when 'Пицца'
          Button.ita_menu_res_1_pizza(message, bot)

        when '🔙Назад в меню'
          Button.main_menu(message, bot)

      end
    end
  end

  def self.ita_menu_res_1_pizza(message, bot)
    text = 'Значит мы к вам =)'
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: 'Карбонара'),
      Telegram::Bot::Types::KeyboardButton.new(text: 'Диаволла'),
      Telegram::Bot::Types::KeyboardButton.new(text: 'Салями'),
      Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад в меню')
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

    bot.listen do |message|
      case message.text

        when '/start'
          Button.main_menu(message, bot)

        when 'Карбонара'
          Button.ita_menu_res_1_pizza_kar_order(message, bot)

        when '🔙Назад в меню'
          Button.main_menu(message, bot)

      end
    end
  end

  def self.inline_but(message, bot)
    button = Telegram::Bot::Types::InlineKeyboardButton.new(
      text: 'Карбонара тут',
      url: 'https://uk.wikipedia.org/wiki/%D0%9A%D0%B0%D1%80%D0%B1%D0%BE%D0%BD%D0%B0%D1%80%D0%B0'
    )
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: button)
    bot.api.send_message(chat_id: message.chat.id, text: 'Вот это карбонара', reply_markup: markup)
  end

  def self.ita_menu_res_1_pizza_kar_order(message, bot)
    text = 'Заказываем ? =)'
    buttons = [
      [Telegram::Bot::Types::KeyboardButton.new(text: 'Я хочу Карбонару'),
       Telegram::Bot::Types::KeyboardButton.new(text: 'Не хочу Карбонару')],
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

    bot.listen do |message|
      case message.text

        when '/start'
          Button.main_menu(message, bot)

        when 'Я хочу Карбонару'
          Button.pizza_quantity(message, bot)

        when 'Не хочу Карбонару'
          Button.ita_menu_res_1_pizza(message, bot)

      end
    end
  end

  def self.pizza_quantity(message, bot)
    text = 'Количество пожалуйста'
    buttons = [
       Telegram::Bot::Types::KeyboardButton.new(text: '1'), Telegram::Bot::Types::KeyboardButton.new(text: '2'),
       Telegram::Bot::Types::KeyboardButton.new(text: '3'), Telegram::Bot::Types::KeyboardButton.new(text: '4'),
       Telegram::Bot::Types::KeyboardButton.new(text: '5'), Telegram::Bot::Types::KeyboardButton.new(text: '6'),
       Telegram::Bot::Types::KeyboardButton.new(text: '7'), Telegram::Bot::Types::KeyboardButton.new(text: '8'),
       Telegram::Bot::Types::KeyboardButton.new(text: '9'), Telegram::Bot::Types::KeyboardButton.new(text: '10'),
       Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад')
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

    bot.listen do |message|
      case message.text

        when '/start'
          Button.main_menu(message, bot)

        when '1'
          Button.last_step(message, bot)

        when '2'
          Button.last_step(message, bot)

        when '3'
          Button.last_step(message, bot)

        when '4'
          Button.last_step(message, bot)

        when '5'
          Button.last_step(message, bot)

        when '6'
          Button.last_step(message, bot)

        when '7'
          Button.last_step(message, bot)

        when '8'
          Button.last_step(message, bot)

        when '9'
          Button.last_step(message, bot)

        when '10'
          Button.last_step(message, bot)

        when '🔙Назад'
          Button.ita_menu_res_1_pizza(message, bot)

      end
    end
  end

  def self.order_table(message, bot)
    text = 'На какое время?'
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: '11:00'), Telegram::Bot::Types::KeyboardButton.new(text: '11:30'),
      Telegram::Bot::Types::KeyboardButton.new(text: '12:00'), Telegram::Bot::Types::KeyboardButton.new(text: '12:30'),
      Telegram::Bot::Types::KeyboardButton.new(text: '13:00'), Telegram::Bot::Types::KeyboardButton.new(text: '13:30'),
      Telegram::Bot::Types::KeyboardButton.new(text: '14:00'), Telegram::Bot::Types::KeyboardButton.new(text: '14:30'),
      Telegram::Bot::Types::KeyboardButton.new(text: '15:00'), Telegram::Bot::Types::KeyboardButton.new(text: '15:30'),
      Telegram::Bot::Types::KeyboardButton.new(text: '16:00'), Telegram::Bot::Types::KeyboardButton.new(text: '16:30'),
      Telegram::Bot::Types::KeyboardButton.new(text: '17:00'), Telegram::Bot::Types::KeyboardButton.new(text: '17:30'),
      Telegram::Bot::Types::KeyboardButton.new(text: '18:00'), Telegram::Bot::Types::KeyboardButton.new(text: '18:30'),
      Telegram::Bot::Types::KeyboardButton.new(text: '19:00'), Telegram::Bot::Types::KeyboardButton.new(text: '19:30'),
      Telegram::Bot::Types::KeyboardButton.new(text: '20:00'), Telegram::Bot::Types::KeyboardButton.new(text: '20:30'),
      Telegram::Bot::Types::KeyboardButton.new(text: '21:00'), Telegram::Bot::Types::KeyboardButton.new(text: '21:30'),
      Telegram::Bot::Types::KeyboardButton.new(text: '22:00'), Telegram::Bot::Types::KeyboardButton.new(text: '22:30'),
      Telegram::Bot::Types::KeyboardButton.new(text: '23:00'), Telegram::Bot::Types::KeyboardButton.new(text: '23:30'),
      Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад')
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

    bot.listen do |message|
      case message.text

        when '/start'
          Button.main_menu(message, bot)

        when '11:00'
          Global.order_table_time = '11:00'
          Button.time_confirmation(message, bot)

        when '11:30'
          Global.order_table_time = '11:30'
          Button.time_confirmation(message, bot)

        when '12:00'
          Global.order_table_time = '12:00'
          Button.time_confirmation(message, bot)

        when '12:30'
          Global.order_table_time = '12:30'
          Button.time_confirmation(message, bot)

        when '13:00'
          Global.order_table_time = '13:00'
          Button.time_confirmation(message, bot)

        when '13:30'
          Global.order_table_time = '13:30'
          Button.time_confirmation(message, bot)

        when '14:00'
          Global.order_table_time = '14:00'
          Button.time_confirmation(message, bot)

        when '14:30'
          Global.order_table_time = '14:30'
          Button.time_confirmation(message, bot)

        when '15:00'
          Global.order_table_time = '15:00'
          Button.time_confirmation(message, bot)

        when '15:30'
          Global.order_table_time = '15:30'
          Button.time_confirmation(message, bot)

        when '16:00'
          Global.order_table_time = '16:00'
          Button.time_confirmation(message, bot)

        when '16:30'
          Global.order_table_time = '16:30'
          Button.time_confirmation(message, bot)

        when '17:00'
          Global.order_table_time = '17:00'
          Button.time_confirmation(message, bot)

        when '17:30'
          Global.order_table_time = '17:30'
          Button.time_confirmation(message, bot)

        when '18:00'
          Global.order_table_time = '18:00'
          Button.time_confirmation(message, bot)

        when '18:30'
          Global.order_table_time = '18:30'
          Button.time_confirmation(message, bot)

        when '19:00'
          Global.order_table_time = '19:00'
          Button.time_confirmation(message, bot)

        when '19:30'
          Global.order_table_time = '19:30'
          Button.time_confirmation(message, bot)

        when '20:00'
          Global.order_table_time = '20:00'
          Button.time_confirmation(message, bot)

        when '20:30'
          Global.order_table_time = '20:30'
          Button.time_confirmation(message, bot)

        when '21:00'
          Global.order_table_time = '21:00'
          Button.time_confirmation(message, bot)

        when '21:30'
          Global.order_table_time = '21:30'
          Button.time_confirmation(message, bot)

        when '22:00'
          Global.order_table_time = '22:00'
          Button.time_confirmation(message, bot)

        when '22:30'
          Global.order_table_time = '22:30'
          Button.time_confirmation(message, bot)

        when '23:00'
          Global.order_table_time = '23:00'
          Button.time_confirmation(message, bot)

        when '23:30'
          Global.order_table_time = '23:30'
          Button.time_confirmation(message, bot)

        when '🔙Назад'
          Button.ita_menu_res_1(message, bot)

      end
    end
  end

  def self.time_confirmation(message, bot)
    text = "на #{Global.order_table_time} ?"
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: 'Да'),
      Telegram::Bot::Types::KeyboardButton.new(text: 'Нет'),
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

    bot.listen do |message|
      case message.text

        when '/start'
          Button.main_menu(message, bot)

        when 'Да'
          bot.api.send_message(chat_id: message.chat.id, text: "Ваш столик ждет вас на #{Global.order_table_time} часов =)", reply_markup: markup)
          BDcontroller.bd_input

        when 'Нет'
          Button.order_table(message, bot)



        when '🔙Назад'
          Button.ita_menu_res_1_pizza(message, bot)

      end
    end
  end

  def self.last_step(message, bot)
    text = 'Количество пожалуйста'
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: 'Заказать еще'),
      Telegram::Bot::Types::KeyboardButton.new(text: 'Оформить заказ'),
      Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад')
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

    bot.listen do |message|
      case message.text

        when '/start'
          Button.main_menu(message, bot)

        when 'Заказать еще'
          Button.main_menu(message, bot)

        when 'Оформить заказ'
          Button.phone_check(message, bot)

        when '🔙Назад'
          Button.ita_menu_res_1_pizza(message, bot)

      end
    end
  end


  def self.phone_check(message, bot)
    phone = [
      [Telegram::Bot::Types::KeyboardButton.new(text: 'Дать номер с Телеграма', request_contact: true),
       Telegram::Bot::Types::KeyboardButton.new(text: 'Написать ручками')]
    ]
    phone_markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: phone)
    bot.api.send_message(chat_id: message.chat.id, text: 'Напишите нам ваш номер ? =)', reply_markup: phone_markup)
    bot.listen do |message|
      case message.text

        when '/start'
          Button.main_menu(message, bot)

        when 'Написать ручками'
          bot.api.send_message(chat_id: message.chat.id, text: 'Напишите пожалуйста ваш номер в формате "+380..."')

          bot.listen do |message|
            Global.num_fetch = message.text
            if message.class == Integer
              bot.api.send_message(chat_id: message.chat_id, text: 'Спасибо за номер')
            end
            #while message.text == nil
            #  bot.api.send_message(chat_id: message.chat_id, text: 'Введите пожалуйста номер')
            #  bot.api.send_message(chat_id: message.chat.id, text: "num #{Global.num_fetch}")
           # end
          end

      end
    end
  end
end

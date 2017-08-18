require './Database/DBorder'
require './Database/DBtable'
require './Getuserinfo'

class Farodelporto

  def self.menu_res(message, bot)

    Global.restaurant = "Farodelporto"

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
          Menu_button.user_info(message, bot)

        when '📦Доставка🛵'
          Farodelporto.delivery(message, bot)

        when '🕯Заказать столик📝'
          Farodelporto.order_table(message, bot)

        when '💙Отзывы💜'

        when '🔙Назад в меню'
          Menu_button.main_menu(message, bot)


      end
    end
  end

  def self.delivery(message, bot)

    text = 'Значит заказываем =)'
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
          Menu_button.user_info(message, bot)

        when 'Пицца'
          Farodelporto.pizza(message, bot)

        when '🔙Назад в меню'
          Menu_button.main_menu(message, bot)

      end
    end
  end
  def self.pizza(message, bot)

    text = 'Ууу піцца, вкусняшка'
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: 'Карбонара'),
      Telegram::Bot::Types::KeyboardButton.new(text: 'Диаволла'),
      Telegram::Bot::Types::KeyboardButton.new(text: 'Салями'),
      Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад')
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

    bot.listen do |message|
      case message.text

        when '/start'
          Menu_button.user_info(message, bot)

        when 'Карбонара'
          Global.order_cart.push('Карбонара')
          Global.pizza = Global.order_cart
          Farodelporto.pizza_quantity(message, bot)

        when '🔙Назад'
          Farodelporto.delivery(message, bot)

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
          Menu_button.user_info(message, bot)

        when '1'
          Global.order_quantity = '1'
          Global.order_cart.push(Global.order_quantity)
          Farodelporto.last_step(message, bot)

        when '2'
          Global.order_quantity = '2'
          Global.order_cart.push(Global.order_quantity)
          Farodelporto.last_step(message, bot)

        when '3'
          Global.order_quantity = '3'
          Global.order_cart.push(Global.order_quantity)
          Farodelporto.last_step(message, bot)

        when '4'
          Global.order_quantity = '4'
          Global.order_cart.push(Global.order_quantity)
          Farodelporto.last_step(message, bot)

        when '5'
          Global.order_quantity = '5'
          Global.order_cart.push(Global.order_quantity)
          Farodelporto.last_step(message, bot)

        when '6'
          Global.order_quantity = '6'
          Global.order_cart.push(Global.order_quantity)
          Farodelporto.last_step(message, bot)

        when '7'
          Global.order_quantity = '7'
          Global.order_cart.push(Global.order_quantity)
          Farodelporto.last_step(message, bot)

        when '8'
          Global.order_quantity = '8'
          Global.order_cart.push(Global.order_quantity)
          Farodelporto.last_step(message, bot)

        when '9'
          Global.order_quantity = '9'
          Global.order_cart.push(Global.order_quantity)
          Farodelporto.last_step(message, bot)

        when '10'
          Global.order_quantity = '10'
          Global.order_cart.push(Global.order_quantity)
          Farodelporto.last_step(message, bot)

        when '🔙Назад'
          Farodelporto.pizza(message, bot)

      end
    end
  end

  def self.last_step(message, bot)

    text = 'Оформляем? Или еще что-то ?'
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: 'Оформить заказ'),
      Telegram::Bot::Types::KeyboardButton.new(text: 'Заказать еще'),
      Telegram::Bot::Types::KeyboardButton.new(text: 'Отменить заказ')
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

    bot.listen do |message|
      case message.text

        when '/start'
          Menu_button.user_info(message, bot)

        when 'Заказать еще'
          bot.api.send_message(chat_id: message.chat.id, text: "Запомню это, вдруг пригодяться) #{Global.order_cart.join(', ')}")
          Farodelporto.delivery(message, bot)

        when 'Оформить заказ'
          Getuserinfo.get_client_address(message, bot)
          Farodelporto.order_confirmation(message, bot)


        when 'Отменить заказ'
          Global.restaurant = nil
          Global.pizza = nil
          Global.order_quantity = nil
          Global.order_cart = nil
          Menu_button.main_menu(message, bot)

      end
    end
  end



  def self.order_confirmation(message, bot)

    text = 'Если все верно, жмите Принять заказ'
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: 'Принять заказ'),
      Telegram::Bot::Types::KeyboardButton.new(text: 'Отменить заказ')
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)
    bot.api.send_message(chat_id: message.chat.id,
                         text: "
Ресторан: #{Global.restaurant}
Имя: #{Global.client_name}
Телефон: #{Global.client_phone}
Адрес: #{Global.client_address}
Заказ: #{Global.pizza.join(', ')}", reply_markup: markup)

    bot.listen do |message|
      case message.text

        when '/start'
          Menu_button.user_info(message, bot)

        when 'Принять заказ'
          DBorder.bd_input
          bot.api.send_message(chat_id: message.chat.id, text: 'Спасибо за заказик, мы скоро приедем =)')
          Menu_button.stop_button(message, bot)

        when 'Отменить заказ'
          Global.restaurant = nil
          Global.pizza = nil
          Global.order_quantity = nil
          Global.order_cart = nil
          Menu_button.main_menu(message, bot)

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
          Menu_button.user_info(message, bot)

        when '11:00'
          Global.order_table_time = '11:00'
          Farodelporto.time_confirmation(message, bot)

        when '11:30'
          Global.order_table_time = '11:30'
          Farodelporto.time_confirmation(message, bot)

        when '12:00'
          Global.order_table_time = '12:00'
          Farodelporto.time_confirmation(message, bot)

        when '12:30'
          Global.order_table_time = '12:30'
          Farodelporto.time_confirmation(message, bot)

        when '13:00'
          Global.order_table_time = '13:00'
          Farodelporto.time_confirmation(message, bot)

        when '13:30'
          Global.order_table_time = '13:30'
          Farodelporto.time_confirmation(message, bot)

        when '14:00'
          Global.order_table_time = '14:00'
          Farodelporto.time_confirmation(message, bot)

        when '14:30'
          Global.order_table_time = '14:30'
          Farodelporto.time_confirmation(message, bot)

        when '15:00'
          Global.order_table_time = '15:00'
          Farodelporto.time_confirmation(message, bot)

        when '15:30'
          Global.order_table_time = '15:30'
          Farodelporto.time_confirmation(message, bot)

        when '16:00'
          Global.order_table_time = '16:00'
          Farodelporto.time_confirmation(message, bot)

        when '16:30'
          Global.order_table_time = '16:30'
          Farodelporto.time_confirmation(message, bot)

        when '17:00'
          Global.order_table_time = '17:00'
          Farodelporto.time_confirmation(message, bot)

        when '17:30'
          Global.order_table_time = '17:30'
          Farodelporto.time_confirmation(message, bot)

        when '18:00'
          Global.order_table_time = '18:00'
          Farodelporto.time_confirmation(message, bot)

        when '18:30'
          Global.order_table_time = '18:30'
          Farodelporto.time_confirmation(message, bot)

        when '19:00'
          Global.order_table_time = '19:00'
          Farodelporto.time_confirmation(message, bot)

        when '19:30'
          Global.order_table_time = '19:30'
          Farodelporto.time_confirmation(message, bot)

        when '20:00'
          Global.order_table_time = '20:00'
          Farodelporto.time_confirmation(message, bot)

        when '20:30'
          Global.order_table_time = '20:30'
          Farodelporto.time_confirmation(message, bot)

        when '21:00'
          Global.order_table_time = '21:00'
          Farodelporto.time_confirmation(message, bot)

        when '21:30'
          Global.order_table_time = '21:30'
          Farodelporto.time_confirmation(message, bot)

        when '22:00'
          Global.order_table_time = '22:00'
          Farodelporto.time_confirmation(message, bot)

        when '22:30'
          Global.order_table_time = '22:30'
          Farodelporto.time_confirmation(message, bot)

        when '23:00'
          Global.order_table_time = '23:00'
          Farodelporto.time_confirmation(message, bot)

        when '23:30'
          Global.order_table_time = '23:30'
          Farodelporto.time_confirmation(message, bot)

        when '🔙Назад'
          Farodelporto.menu_res(message, bot)

      end
    end
  end

  def self.time_confirmation(message, bot)

    text = "на #{Global.order_table_time} ?"
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: 'Да'),
      Telegram::Bot::Types::KeyboardButton.new(text: 'Нет')
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

    bot.listen do |message|
      case message.text

        when '/start'
          Menu_button.user_info(message, bot)

        when 'Да'
          DBtable.bd_input
          bot.api.send_message(chat_id: message.chat.id, text: "Ваш столик ждет вас на #{Global.order_table_time} и мы тоже =)", reply_markup: markup)
          Menu_button.stop_button(message, bot)

        when 'Нет'
          Farodelporto.order_table(message, bot)


      end
    end
  end

end

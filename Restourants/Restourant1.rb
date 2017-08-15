require './Database/DBorder'
require './Database/DBtable'
require './Telephone_checker'

class Restourant1

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
        Menu_button.main_menu(message, bot)

      when '📦Доставка🛵'
        Restourant1.delivery(message, bot)

      when '🕯Заказать столик📝'
        Restourant1.order_table(message, bot)

      when '💙Отзывы💜'

      when '🔙Назад в меню'
        Menu_button.main_menu(message, bot)


    end
  end
end

def self.delivery(message, bot)
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
        Menu_button.main_menu(message, bot)

      when 'Пицца'
        Restourant1.pizza(message, bot)

      when '🔙Назад в меню'
        Menu_button.main_menu(message, bot)

    end
  end
end

def self.pizza(message, bot)
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
        Menu_button.main_menu(message, bot)

      when 'Карбонара'
        Global.order_cart.push('Карбонара')
        Global.pizza = 'Karbonara'
        Restourant1.pizza_quantity(message, bot)

      when '🔙Назад в меню'
        Menu_button.main_menu(message, bot)

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
        Menu_button.main_menu(message, bot)

      when '1'
        Global.order_quantity = '1'
        Global.order_cart.push(Global.order_quantity)
        Restourant1.last_step(message, bot)

      when '2'
        Global.order_quantity = '2'
        Global.order_cart.push(Global.order_quantity)
        Restourant1.last_step(message, bot)

      when '3'
        Global.order_quantity = '3'
        Global.order_cart.push(Global.order_quantity)
        Restourant1.last_step(message, bot)

      when '4'
        Global.order_quantity = '4'
        Global.order_cart.push(Global.order_quantity)
        Restourant1.last_step(message, bot)

      when '5'
        Global.order_quantity = '5'
        Global.order_cart.push(Global.order_quantity)
        Restourant1.last_step(message, bot)

      when '6'
        Global.order_quantity = '6'
        Global.order_cart.push(Global.order_quantity)
        Restourant1.last_step(message, bot)

      when '7'
        Global.order_quantity = '7'
        Global.order_cart.push(Global.order_quantity)
        Restourant1.last_step(message, bot)

      when '8'
        Global.order_quantity = '8'
        Global.order_cart.push(Global.order_quantity)
        Restourant1.last_step(message, bot)

      when '9'
        Global.order_quantity = '9'
        Global.order_cart.push(Global.order_quantity)
        Restourant1.last_step(message, bot)

      when '10'
        Global.order_quantity = '10'
        Global.order_cart.push(Global.order_quantity)
        Restourant1.last_step(message, bot)

      when '🔙Назад'
        Restourant1.pizza(message, bot)

    end
  end
end

def self.last_step(message, bot)
  text = 'Количество пожалуйста'
  buttons = [
    Telegram::Bot::Types::KeyboardButton.new(text: 'Оформить заказ'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Отменить заказ')
  ]
  markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)

  bot.listen do |message|
    case message.text

      when '/start'
        Menu_button.main_menu(message, bot)

      when 'Оформить заказ'
        Restourant1.get_user_name(message, bot)
        Restourant1.get_user_phone(message, bot)
        Restourant1.order_confirmation(message, bot)


      when 'Отменить заказ'
        Global.pizza = nil
        Global.order_quantity = nil
        Restourant1.pizza(message, bot)

    end
  end
end

def self.get_user_name(message, bot)
  bot.api.send_message(chat_id: message.chat.id, text: "Напишите свое имя пожалуйста =) ")
  bot.listen do |message|
    Global.client_name = message.text
    bot.api.send_message(chat_id: message.chat.id, text: "Спасибо за имя =) ")
    break
  end
end

def self.get_user_phone(message, bot)
  bot.api.send_message(chat_id: message.chat.id, text: "Напишите свой номер телефона пожалуйста =) ")
  bot.listen do |message|
    Global.client_phone = message.text
    bot.api.send_message(chat_id: message.chat.id, text: "Спасибо за номерок =) ")
    break
  end
end

def self.order_confirmation(message, bot)
  text = 'Если все верно, жмите Принять заказ'
  buttons = [
    Telegram::Bot::Types::KeyboardButton.new(text: 'Принять заказ'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Заказать еще'),
    Telegram::Bot::Types::KeyboardButton.new(text: 'Отменить заказ')
  ]
  markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
  bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)
  bot.api.send_message(chat_id: message.chat.id,
                       text: "
Имя: #{Global.client_name}
Номер: #{Global.client_phone}
Пицца: #{Global.pizza}
Количество: #{Global.order_quantity}", reply_markup: markup)

  bot.listen do |message|
    case message.text

      when '/start'
        Menu_button.main_menu(message, bot)

      when 'Принять заказ'
        DBorder.bd_input
        bot.api.send_message(chat_id: message.chat.id, text: 'Спасибо за заказик, мы скоро приедем =)')
        Menu_button.stop_button(message, bot)

      when 'Заказать еще'
        bot.api.send_message(chat_id: message.chat.id, text: "#{Global.order_cart}")
        Restourant1.delivery(message, bot)

      when 'Отменить заказ'
        Global.client_name = nil
        Global.client_phone = nil
        Global.pizza = nil
        Global.order_quantity = nil
        Restourant1.pizza(message, bot)

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
        Menu_button.main_menu(message, bot)

      when '11:00'
        Global.order_table_time = '11:00'
        Restourant1.time_confirmation(message, bot)

      when '11:30'
        Global.order_table_time = '11:30'
        Restourant1.time_confirmation(message, bot)

      when '12:00'
        Global.order_table_time = '12:00'
        Restourant1.time_confirmation(message, bot)

      when '12:30'
        Global.order_table_time = '12:30'
        Restourant1.time_confirmation(message, bot)

      when '13:00'
        Global.order_table_time = '13:00'
        Restourant1.time_confirmation(message, bot)

      when '13:30'
        Global.order_table_time = '13:30'
        Restourant1.time_confirmation(message, bot)

      when '14:00'
        Global.order_table_time = '14:00'
        Restourant1.time_confirmation(message, bot)

      when '14:30'
        Global.order_table_time = '14:30'
        Restourant1.time_confirmation(message, bot)

      when '15:00'
        Global.order_table_time = '15:00'
        Restourant1.time_confirmation(message, bot)

      when '15:30'
        Global.order_table_time = '15:30'
        Restourant1.time_confirmation(message, bot)

      when '16:00'
        Global.order_table_time = '16:00'
        Restourant1.time_confirmation(message, bot)

      when '16:30'
        Global.order_table_time = '16:30'
        Restourant1.time_confirmation(message, bot)

      when '17:00'
        Global.order_table_time = '17:00'
        Restourant1.time_confirmation(message, bot)

      when '17:30'
        Global.order_table_time = '17:30'
        Restourant1.time_confirmation(message, bot)

      when '18:00'
        Global.order_table_time = '18:00'
        Restourant1.time_confirmation(message, bot)

      when '18:30'
        Global.order_table_time = '18:30'
        Restourant1.time_confirmation(message, bot)

      when '19:00'
        Global.order_table_time = '19:00'
        Restourant1.time_confirmation(message, bot)

      when '19:30'
        Global.order_table_time = '19:30'
        Restourant1.time_confirmation(message, bot)

      when '20:00'
        Global.order_table_time = '20:00'
        Restourant1.time_confirmation(message, bot)

      when '20:30'
        Global.order_table_time = '20:30'
        Restourant1.time_confirmation(message, bot)

      when '21:00'
        Global.order_table_time = '21:00'
        Restourant1.time_confirmation(message, bot)

      when '21:30'
        Global.order_table_time = '21:30'
        Restourant1.time_confirmation(message, bot)

      when '22:00'
        Global.order_table_time = '22:00'
        Restourant1.time_confirmation(message, bot)

      when '22:30'
        Global.order_table_time = '22:30'
        Restourant1.time_confirmation(message, bot)

      when '23:00'
        Global.order_table_time = '23:00'
        Restourant1.time_confirmation(message, bot)

      when '23:30'
        Global.order_table_time = '23:30'
        Restourant1.time_confirmation(message, bot)

      when '🔙Назад'
        Restourant1.ita_menu_res_1(message, bot)

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
        Menu_button.main_menu(message, bot)

      when 'Да'
        bot.api.send_message(chat_id: message.chat.id, text: "Ваш столик ждет вас на #{Global.order_table_time} и мы тоже =)", reply_markup: markup)
        DBtable.bd_input
        Menu_button.stop_button(message, bot)

      when 'Нет'
        Restourant1.order_table(message, bot)


      when '🔙Назад'
        Restourant1.pizza(message, bot)

    end
  end
end

end

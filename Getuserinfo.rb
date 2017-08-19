require './Telephone_checker'
require './Address_checker'

class Getuserinfo

  def self.get_client_name(message, bot)
    bot.api.send_message(chat_id: message.chat.id, text: "Как вас зовут ? =) Нам это пригодяться для заказа")
    bot.listen do |message|
      Global.client_name = message.text
      bot.api.send_message(chat_id: message.chat.id, text: "Прикольное имя)")
      break
    end
  end

  def self.get_client_phone(message, bot)
    bot.listen do |message|
      phone = Telephone_checker.ukrainian_only(message.text)
      if phone == '0'
        bot.api.send_message(chat_id: message.chat.id, text: "Номер неправильный, введите еще раз")
        Getuserinfo.get_client_phone(message, bot)
        break
      else
        Global.client_phone = phone
        Getuserinfo.get_client_phone_buttons(message, bot)
        break
      end
    end
  end

  def self.get_client_phone_buttons(message, bot)
    text = "Ваш номер? #{Global.client_phone}"
    buttons = [
      Telegram::Bot::Types::KeyboardButton.new(text: 'Да'),
      Telegram::Bot::Types::KeyboardButton.new(text: 'Нет')
    ]
    markup = Telegram::Bot::Types::ReplyKeyboardMarkup.new(keyboard: buttons, one_time_keyboard: true, resize_keyboard: true)
    bot.api.send_message(chat_id: message.chat.id, text: "#{text}", reply_markup: markup)
    bot.listen do |message|
    case message.text

      when 'Да'
        Menu_button.main_menu(message, bot)

      when 'Нет'
        bot.api.send_message(chat_id: message.chat.id, text: 'Ну тогда вводите заново =)')
        Getuserinfo.get_client_phone(message, bot)
    end
    end
  end

  def self.get_client_address(message, bot)
      Getuserinfo.get_client_st_name(message, bot)
      Getuserinfo.get_client_st_num(message, bot)
        if Address_checker.url(Global.client_st_name, Global.client_st_num) == "Есть такая улица"
          bot.api.send_message(chat_id: message.chat.id, text: "Спасибо =)")
          Global.client_address = Global.client_st_name + ', ' + Global.client_st_num
        else
          bot.api.send_message(chat_id: message.chat.id, text: "Мы не нашли такой улицы =( введите заново пожалуйста")
          Getuserinfo.get_client_address(message, bot)
        end
  end

  def self.get_client_st_name(message, bot)
    bot.api.send_message(chat_id: message.chat.id, text: "Напишите пожалуйста название улицы без номерка)")
    bot.listen do |message|
      Global.client_st_name = message.text
      break
    end
  end

  def self.get_client_st_num(message, bot)
    bot.api.send_message(chat_id: message.chat.id, text: "А теперь номерок улицы =)")
    bot.listen do |message|
      Global.client_st_num = message.text
      break
    end
  end
end

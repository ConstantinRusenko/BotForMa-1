require 'nokogiri'
require 'open-uri'
require 'json'

class Button_cookery
  def self.faro_del_porto(message, bot)
    url = 'https://crabservers.herokuapp.com/html/Katalog_Faro.html'
    html = open(url)
    doc = Nokogiri::HTML(html)
    @lables = []
    doc.css('.drinks').each do |showing|
      @lables = showing.css('p').map {|date| date.text.strip}
    end
    buttons = []
    @lables.each { |lable|
      buttons <<  Telegram::Bot::Types::KeyboardButton.new(text: lable)
    }
    buttons << Telegram::Bot::Types::KeyboardButton.new(text: '🔙Назад в меню')
    Farodelporto.pizza(message, bot, buttons)
  end

end

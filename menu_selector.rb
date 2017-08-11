class Menu_selector

  def self.menu_var(message, bot)
    bot.listen do |message|
      case message.text

        when "🍝Итальянская кухня🍕"
          Button.ita_menu(message, bot)

        when "Restourant1"
          Button.ita_menu_res_1(message, bot)

        when "🍱Японская кухня🍣"
          Button.jap_menu(message, bot)

        when "🍷Грузинская кухня🍖"
          Button.geo_menu(message, bot)

        when "🍞Украинская кухня🍲"
          Button.ukr_menu(message, bot)

        when "🍺Немецкая кухня🥓"
          Button.ger_menu(message, bot)

        when "🔙Назад в меню"
          Button.main_menu(message, bot)

    end
  end
  end
end



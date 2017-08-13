require 'sqlite3'

class BDcontroller
    def self.bd_input

      @username = "olezha"

      @phone = "777"
      orderdate = Time.now
      @orderdate = orderdate.strftime("%H:%M-%d.%m.%Y")

      @datestamp = Global.order_table_time

      @barber = "vasil"

      @color = "red"


      @db = SQLite3::Database.new 'Restourant1'
      @db.execute 'create table if not exists
      "Users" (
          "id" Integer primary key autoincrement,
          "username" Text,
          "phone" Text,
          "orderdate" Text,
          "datestamp" Text,
          "barber" Text,
          "color" Text
      )'

      @db.execute( 'INSERT INTO
      Users (
          username,
          phone,
          orderdate,
          datestamp,
          barber,
          color
      )
      VALUES ( ?, ?, ?, ?, ?, ?)', [@username, @phone, @orderdate, @datestamp, @barber, @color])

    end
  end








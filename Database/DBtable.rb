require 'sqlite3'

class DBtable

  def self.bd_input

    @username = "olezha"
    @restourant = "1"
    @phone = "1"
    orderdate = Time.now
    @orderdate = orderdate.strftime("%H:%M-%d.%m.%Y")
    @time = Global.order_table_time


    @db = SQLite3::Database.new 'Restourant1'
    @db.execute 'create table if not exists
      "Users" (
          "id" Integer primary key autoincrement,
          "username" Text,
          "phone" Text,
          "orderdate" Text,
          "time" Text,
          "barber" Text,
          "color" Text
      )'

    @db.execute( 'INSERT INTO
      Users (
          username,
          phone,
          orderdate,
          time,
          barber,
          color
      )
      VALUES ( ?, ?, ?, ?, ?, ?)', [@username, @phone, @orderdate, @time, @barber, @color])

  end
end








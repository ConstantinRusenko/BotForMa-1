require 'sqlite3'

class DBtable

  def self.bd_input

    @username = Global.client_name
    @restourant = "1"
    @phone = Global.client_phone
    orderdate = Time.now
    @orderdate = orderdate.strftime("%H:%M-%d.%m.%Y")
    @time = Global.order_table_time


    @db = SQLite3::Database.new 'Restourant1'
    @db.execute 'create table if not exists
      "Users" (
          "id" Integer primary key autoincrement,
          "username" Text,
          "restourant" Text,
          "phone" Text,
          "orderdate" Text,
          "time" Text,
      )'

    @db.execute( 'INSERT INTO
      Users (
          username,
          restourant,
          phone,
          orderdate,
          time,
      )
      VALUES ( ?, ?, ?, ?, ?)', [@username, @restourant, @phone, @orderdate, @time])

  end
end








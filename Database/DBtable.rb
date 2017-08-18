require 'sqlite3'

class DBtable

  def self.bd_input

    orderdate = Time.now
    @orderdate = orderdate.strftime("%H:%M-%d.%m.%Y")
    @restaurant = Global.restaurant
    @username = Global.client_name
    @phone = Global.client_phone
    @order_table_time = Global.order_table_time


    @db = SQLite3::Database.new 'TableOrders'
    @db.execute 'create table if not exists
      "Users" (
          "id" Integer primary key autoincrement,
          "orderdate" Text,
          "restaurant" Text,
          "username" Text,
          "phone" Text,
          "tabletime" Text
      )'

    @db.execute( 'INSERT INTO
      Users (
          orderdate,
          restaurant,
          username,
          phone,
          tabletime
      )
      VALUES ( ?, ?, ?, ?, ?)', [@orderdate, @restaurant, @username, @phone, @order_table_time])

  end
end








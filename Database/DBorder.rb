require 'sqlite3'

class DBorder

  def self.bd_input

    @restaurant = Global.restaurant
    orderdate = Time.now
    @orderdate = orderdate.strftime("%H:%M-%d.%m.%Y")
    @username = Global.client_name
    @phone = Global.client_phone
    @address = Global.address
    @userorder = Global.order_cart.join(', ')

    @db = SQLite3::Database.new 'DeliveryOrder'
    @db.execute 'create table if not exists
      "Users" (
          "id" Integer primary key autoincrement,
          "restaurant" Text,
          "orderdate" Text,
          "username" Text,
          "phone" Text,
          "address" Text,
          "userorder" Text
      )'

    @db.execute( 'INSERT INTO
      Users (
          restaurant,
          orderdate,
          username,
          phone,
          address,
          userorder
      )
      VALUES ( ?, ?, ?, ?, ?, ?)', [@restaurant, @orderdate, @username, @phone, @address, @userorder])

  end
end

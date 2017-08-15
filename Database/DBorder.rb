require 'sqlite3'

class DBorder

  def self.bd_input

    @username = Global.client_name
    @quantity = Global.order_cart.join(', ')
    @pizza = Global.pizza
    @phone = Global.client_phone
    orderdate = Time.now
    @orderdate = orderdate.strftime("%H:%M-%d.%m.%Y")


    @db = SQLite3::Database.new 'PizzaOrder'
    @db.execute 'create table if not exists
      "Users" (
          "id" Integer primary key autoincrement,
          "username" Text,
          "quantity" Text,
          "pizza" Text,
          "phone" Text,
          "orderdate" Text
      )'

    @db.execute( 'INSERT INTO
      Users (
          username,
          quantity,
          pizza,
          phone,
          orderdate
      )
      VALUES ( ?, ?, ?, ?, ?)', [@username, @quantity, @pizza, @phone, @orderdate])

  end
end

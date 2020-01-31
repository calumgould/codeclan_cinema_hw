require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')

require('pry-byebug')

Ticket.delete_all()
Film.delete_all()
Customer.delete_all()


# CUSTOMERS #
customer1 = Customer.new({
  'name' => 'Calum',
  'funds' => 50
  })
customer1.save()

customer2 = Customer.new({
  'name' => 'Fraser',
  'funds' => 20
  })
customer2.save()

customer3 = Customer.new({
  'name' => 'Malcolm',
  'funds' => 30
  })
customer3.save()

customer4 = Customer.new({
  'name' => 'Gareth',
  'funds' => 30
  })
customer4.save()

customer5 = Customer.new({
  'name' => 'Noel',
  'funds' => 40
  })
customer5.save()

customer6 = Customer.new({
  'name' => 'Roosa',
  'funds' => 60
  })
customer6.save()



# FILMS #
film1 = Film.new({
  'title' => 'La La Land',
  'price' => 10
  })
film1.save()

film2 = Film.new({
  'title' => 'Zombieland: Double Tap',
  'price' => 10
  })
film2.save()

film3 = Film.new({
  'title' => 'Knives Out',
  'price' => 10
  })
film3.save()

film4 = Film.new({
  'title' => '1917',
  'price' => 10
  })
film4.save()



# TICKETS #
ticket1 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film1.id
  })
ticket1.save()

ticket2 = Ticket.new({
  'customer_id' => customer2.id,
  'film_id' => film1.id
  })
ticket2.save()

ticket3 = Ticket.new({
  'customer_id' => customer3.id,
  'film_id' => film1.id
  })
ticket3.save()

ticket4 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film2.id
  })
ticket4.save()

ticket5 = Ticket.new({
  'customer_id' => customer5.id,
  'film_id' => film2.id
  })
ticket5.save()

ticket6 = Ticket.new({
  'customer_id' => customer6.id,
  'film_id' => film3.id
  })
ticket6.save()

ticket7 = Ticket.new({
  'customer_id' => customer4.id,
  'film_id' => film4.id
  })
ticket7.save()

ticket8 = Ticket.new({
  'customer_id' => customer5.id,
  'film_id' => film4.id
  })
ticket8.save()

binding.pry
nil

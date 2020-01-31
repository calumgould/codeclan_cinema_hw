require_relative('../db/sql_runner')

class Film

  attr_reader :id
  attr_accessor :title, :price

  def initialize(options)
    @title = options['title']
    @price = options['price'].to_i()
    @id = options['id'].to_i() if options ['id']
  end

  def save()
    sql = "INSERT INTO films
    (
      title,
      price
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@title, @price]
    film = SqlRunner.run(sql, values).first()
    @id = film['id'].to_i()
  end

  def update()
    sql = "
    UPDATE films SET (
    title,
    price
    ) =
    (
      $1, $2
    )
    WHERE id = $3"
    values = [@title, @price, @id]
  end

  def self.map_items(film_data)
    results = film_data.map {|film| Film.new(film)}
    return results
  end

  def self.all()
    sql = "SELECT * FROM films"
    film_data = SqlRunner.run(sql)
    return Film.map_items(film_data)
  end

  def self.delete_all()
    sql = "DELETE FROM films"
    SqlRunner.run(sql)
  end

end

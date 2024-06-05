class Customer
  attr_accessor :name, :money, :ticket

  def initialize(name, money, ticket=nil)
    @name, @money, @ticket = name, money, ticket
  end

  def choose_movie
    gets.to_i
  end

  def buy(ticket_vending_machine)
    ticket_vending_machine.display_menu
    chosen_movie = ticket_vending_machine.movies[choose_movie]
    self.money -= chosen_movie.fee
    self.ticket = Ticket.new(chosen_movie)
    puts "#{chosen_movie.title}のチケットを買ったよ！"
    puts "#{name}の所持金が#{money}円になりました！"
  end

end

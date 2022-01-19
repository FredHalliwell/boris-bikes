class Bike

  attr_reader :working

  def initialize(working=true)
    @working = working
  end

  def working?
    puts self.working
    if self.working == true
      puts "bike works"
    else
      puts "bike doesnt work"
    end
  end
end


bike = Bike.new

puts bike.working
puts "running"

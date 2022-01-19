class Bike

  attr_reader :working

  def initialize(working=true)
    @working = working
  end

  def report_working
    ask_user = ""
    while ask_user != 'N' or ask_user != 'Y'
      puts "Is your bike working? Y/N"
      ask_user = gets.chomp.upcase

      if ask_user == 'Y'
        @working = true
        return true
      elsif ask_user == 'N'
        @working = false
        return false
      end
    end
  end
end



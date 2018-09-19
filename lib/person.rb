class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25.00
    @happiness = 8
    @hygiene = 8
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary_amount)
    @bank_account += salary_amount
    "all about the benjamins"
  end

  def take_bath
    #if @hygiene <= 6 && @hygiene >= 0
      self.hygiene=(@hygiene += 4)
      "♪ Rub-a-dub just relaxing in the tub ♫"
     # elsif @hygiene > 6
     #   @hygiene = 10
  #  end

  end

  def work_out
    # if @happiness <= 8 && @hygiene >= 3
        self.happiness=(@happiness += 2)
        self.hygiene=(@hygiene -= 3)
        "♪ another one bites the dust ♫"
    # else
    #     puts "Happiness or hygiene is exceeding/going below required amount"
    # end
  end

  def call_friend(friend)
  #  if @happiness <= 7 && friend.happiness <= 7
        self.happiness=(@happiness += 3)
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
  #  else
  #      puts "Someone's happiness exceeds the maximum amount"
  #  end
  end

  def start_conversation(friend, topic)
    if topic == "politics"# && (@happiness >= 2 && friend.happiness >= 2)
      self.happiness=(@happiness -= 2)
      friend.happiness = friend.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather" #&& (@happiness <= 9 && friend.happiness <= 9)
      self.happiness=(@happiness += 1)
      friend.happiness = friend.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

  def happiness=(num)
    if num > 10
      @happiness = 10
    elsif num < 0
      @happiness = 0
    else
      @happiness = num
    end
  end

  def hygiene=(num)
    if num > 10
      @hygiene = 10
    elsif num < 0
      @hygiene = 0
    else
      @hygiene = num
    end
  end

end

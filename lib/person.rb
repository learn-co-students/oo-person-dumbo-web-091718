class Person
attr_reader :name, :original_happiness, :hygiene
attr_accessor :bank_account

# initialize with name
def initialize(name)
    @name = name
    @original_happiness = 8
    @hygiene = 8
    @bank_account = 25
end

 # happiness measurement
  def happiness=(index)
    if index > 10
      @original_happiness = 10
    elsif index < 0
      @original_happiness = 0
    else
      @original_happiness = index
    end
  end

  # happiness default return
  def happiness
    @original_happiness
  end

  #hygiene measurement
  def hygiene=(hygiene_level)
    if hygiene_level > 10
      @hygiene = 10
    elsif hygiene_level < 0
      @hygiene = 0
    else
      @hygiene = hygiene_level
    end
  end

  # Hygiene default
  def hygiene
    @hygiene
  end

   # happy?
   # returns true if happiness is greater than seven, else false
  def happy?
     if @original_happiness > 7
        true
     else
        false
     end
  end

  # clean
  def clean?
    if @hygiene > 7
        true
    else
        false
    end
  end

  # get paid - accepts an argument of salary
  def get_paid(salary)
   @bank_account = @bank_account + salary
   return "all about the benjamins"
  end

  # take_bath
  def take_bath
    self.hygiene = (@hygiene + 4)
    return '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  # #work_out
  def work_out
    self.hygiene =  (@hygiene - 3)
    self.happiness = (@original_happiness + 2)
    return '♪ another one bites the dust ♫'
  end

  #call_friend - accepts one argument, an instance of the Person
  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    return "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
   if topic == "weather"
     self.happiness=(@original_happiness + 1)
     person.happiness=(person.happiness + 1)
     return "blah blah sun blah rain"
  elsif
     topic != "politics" && topic != "weather"
     return "blah blah blah blah blah"
   elsif topic == "politics"
     self.happiness = (@original_happiness - 2)
     person.happiness=(person.happiness - 2)
     return "blah blah partisan blah lobbyist"
     esle
     return 'blah blah blah blah blah'
   end
  end

end

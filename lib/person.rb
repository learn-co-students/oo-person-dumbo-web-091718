# your code goes here
require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def happiness=(n)
    if n >= 10
      @happiness = 10
    elsif n <= 0
      @happiness = 0
    else
      @happiness = n
    end
  end
  
  def hygiene=(n)
    if n >= 10
      @hygiene = 10
    elsif n <= 0
      @hygiene = 0
    else
      @hygiene = n
    end
  end
  
  def happy?
    @happiness > 7
  end
  
  def clean?
    @hygiene > 7
  end
  
  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end
  
  def take_bath
    self.hygiene += 4
    hygiene=(self.hygiene)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end
  
  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    elsif topic == "programming"
      return "blah blah blah blah blah"
    end
  end
end

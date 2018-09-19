# your code goes here
require 'pry'

class Person
  def initialize(name)
    @name = name
    @bankaccount = 25
    @happiness_index = 8
    @max_value = 10
    @min_value = 0
    @hygiene = 8
  end

  def name
    @name
  end

  def bank_account
    @bankaccount
  end

  def bank_account=(bankaccount)
    @bankaccount = bankaccount
  end

  def happiness
    @happiness_index
  end

  def happiness=(happiness_index)
    @happiness_index = happiness_index
    if @happiness_index > @max_value
      @happiness_index = @max_value
    elsif @happiness_index < @min_value
      @happiness_index =  @min_value
    end
  end

  def hygiene
    @hygiene
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    if @hygiene > @max_value
      @hygiene = @max_value
    elsif @hygiene < @min_value
      @hygiene =  @min_value
    end
  end

  def happy?
    if @happiness_index > 7
      return true
    else
      return false
    end
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary)
    @bankaccount += salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene=self.hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=self.hygiene - 3
    self.happiness=self.happiness + 2
    return "♪ another one bites the dust ♫"
  end


  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{@name}. How are you?"
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
    else
      return "blah blah blah blah blah"
    end
  end
end

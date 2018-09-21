class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(amount)
    if amount > 10
      @happiness = 10 
    elsif amount < 0 
      @happiness = 0 
    else
      @happiness = amount
    end
  end

  def hygiene=(amount)
    if amount > 10
      @hygiene = 10 
    elsif amount < 0 
      @hygiene = 0 
    else
      @hygiene = amount
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
    "all about the benjamins"
  end

  def take_bath
    @hygiene += 4
    original = @hygiene 
    if @hygiene > 4
      self.hygiene = original 
    end
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out 
    @hygiene -= 3
    original = @hygiene 
    if @hygiene < 0 
      self.hygiene = original 
    end

    @happiness += 2
    orig_happiness = @happiness 
    if @happiness > 10 
      self.happiness = orig_happiness
    end
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
      when 'politics'
        person.happiness -= 2
        self.happiness -= 2
        "blah blah partisan blah lobbyist"
      when 'weather'
        person.happiness += 1
        self.happiness += 1
        "blah blah sun blah rain"
      else 'other'
        "blah blah blah blah blah"
    end
  end
end
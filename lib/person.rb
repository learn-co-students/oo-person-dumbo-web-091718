# your code goes here
class Person
  attr_reader :name, :happiness
  attr_accessor :bank_account, :hygiene
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(value)
    @happiness =value
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

  def hygiene=(value)
    @hygiene = value
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end
  
  def get_paid(salary)
    @bank_account+=salary
    'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    '♪ another one bites the dust ♫'
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
      when 'politics'
        person.happiness -= 2
        self.happiness -= 2
        'blah blah partisan blah lobbyist'

      when 'weather'
        person.happiness += 1
        self.happiness += 1
        "blah blah sun blah rain"
      else
        'blah blah blah blah blah'
      end
  end
end

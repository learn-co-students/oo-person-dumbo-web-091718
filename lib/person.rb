class Person
attr_writer :amount
attr_accessor :amount, :happiness_index
attr_reader :name

  def initialize(name)
    @amount = 25
    @name = name
    @happiness_index = 8
    @hygiene = 8
  end

  def bank_account

    @amount
  end

  def bank_account=(amount)
  end

  def happiness
    @happiness_index
  end

  def happiness=(happiness_index)
    @happiness_index = happiness_index
    if @happiness_index > 10
      @happiness_index = 10
    elsif @happiness_index < 0
      @happiness_index = 0
    end
  end

  def hygiene
    @hygiene
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def happy?
    if @happiness_index > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @amount += salary
    "all about the benjamins"
  end

  def take_bath
  increment = @hygiene += 4
    if @hygiene > 10
      @hygiene = 10
    end
    self.hygiene=increment
  "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    decrement = @hygiene -= 3


      self.hygiene=(decrement)
    new_happy_index = @happiness_index += 2
    self.happiness=new_happy_index

    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
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

# your code goes here
class Person

  attr_accessor :amount, :happy_index
  attr_reader :name

  def initialize(name)
    @name = name
    @amount = 25
    @happy_index = 8
    @hygiene = 8
  end

  def bank_account=(amount)
    @amount = amount
  end

  def bank_account
    @amount
  end

  def happiness
    @happy_index
  end

  def happiness=(happy_index)
    @happy_index = happy_index

    if @happy_index > 10
      @happy_index = 10
    elsif @happy_index < 0
      @happy_index = 0
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
    if @happy_index > 7
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

    new_hygiene = @hygiene += 4

    if @hygiene > 10
      self.hygiene=(new_hygiene)
    end
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out

    new_hygiene = @hygiene -= 3
    self.hygiene=(new_hygiene)

    new_happy_index = @happy_index += 2
    self.happiness=(new_happy_index)

    "♪ Rub-a-dub just relaxing in the tub ♫"
    "♪ another one bites the dust ♫"

  end

  def call_friend(callee)
    self.happiness += 3
    callee.happiness += 3

    "Hi #{callee.name}! It's #{@name}. How are you?"
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

# your code goes here
class Person
attr_reader :name, :happiness, :hygiene
attr_accessor  :bank_account
def initialize(name)
  @name=name
  @bank_account=25
  @happiness=8
  @hygiene=8
end #initialize

def happiness=(happiness)
  change=happiness
if change >10
  @happiness=10
elsif change<0
  @happiness=0
else
  @happiness=happiness
end
return @happiness
end

def hygiene=(hygiene)
  change=hygiene
if change >10
  @hygiene=10
elsif change<0
  @hygiene=0
else
  @hygiene=hygiene
end
return @hygiene
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

def get_paid(salary)
  @bank_account+=salary
  return "all about the benjamins"
end

def take_bath
  self.hygiene=(@hygiene+4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.happiness=(@happiness+2)
  self.hygiene=(@hygiene-3)
  return "♪ another one bites the dust ♫"
end

def call_friend(person)
  self.happiness=(@happiness+3)
  person.happiness=(person.happiness+3)
  return "Hi #{person.name}! It's #{@name}. How are you?"
end

def start_conversation(person,topic)
  if topic == "politics"
    self.happiness=(@happiness-2)
    person.happiness=(person.happiness-2)
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness=(@happiness+1)
    person.happiness=(person.happiness+1)
    return "blah blah sun blah rain"
  else
    return "blah blah blah blah blah"
  end
end


end

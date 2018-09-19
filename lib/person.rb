# your code goes here
class Person
  attr_reader:name
  attr_accessor:bank_account,:happiness,:hygiene
  def initialize(name)
    @name=name
    @bank_account=25
    @happiness=8
    @hygiene=8
end

def happiness=(change)
   @change=change
  if change>10
    @happiness=10
  elsif change<=10&&change>=0
    @happiness=change
  else
    @happiness=0
  end
  
end

def hygiene=(change)
  @change=change
   if change>10
    @hygiene=10
  elsif change<=10&&change>=0
    @hygiene=change
  else
    @hygiene=0
  end
end

def clean?
  if hygiene>7
    return true 
  else false 
end
end

def happy?
  if happiness>7
    return true 
  else false 
end
end
  
def get_paid(salary)
  @bank_account+=salary
  "all about the benjamins"
end

def take_bath 
  self.hygiene+=4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.happiness+=2 
  self.hygiene-=3
"♪ another one bites the dust ♫"
end 

def call_friend(person)
  self.happiness+=3
  person.happiness+=3
return"Hi #{person.name}! It's #{self.name}. How are you?"
end

def start_conversation(person,topic)
  if topic=="politics"
    self.happiness-=2 
    person.happiness-=2 
  return "blah blah partisan blah lobbyist"
  elsif topic=="weather"
    self.happiness +=1 
    person.happiness +=1
  return  "blah blah sun blah rain"
else 
  return "blah blah blah blah blah"
end
end
end
class Person
attr_reader :name, :happiness, :bank_account, :hygiene
attr_writer :bank_account
def initialize (name, happiness=8, bank_account=25, hygiene=8)
 @name = name
 @happiness = happiness
 @bank_account = bank_account
 @hygiene = hygiene
end

def hygiene=(new_hygiene)
 if new_hygiene > 10
   @hygiene = 10
 elsif new_hygiene < 0
   @hygiene = 0
 else
   @hygiene = new_hygiene
 end
end

def happiness=(new_happy)
 if new_happy > 10
   @happiness = 10
 elsif new_happy < 0
   @happiness = 0
 else
   @happiness = new_happy
 end
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
@bank_account += salary
return "all about the benjamins"
end

def take_bath
self.hygiene=(@hygiene + 4)
return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
 self.hygiene=(@hygiene - 3)
 self.happiness=(@happiness + 2)
 return "♪ another one bites the dust ♫"
end

def call_friend(friend)
 self.happiness=(@happiness + 3)
 friend.happiness=(friend.happiness + 3)
 return "Hi #{friend.name}! It's #{name}. How are you?"
end

def start_conversation(person, topic)
if topic != "politics" && topic != "weather"
  return "blah blah blah blah blah"
elsif topic == "politics"
  self.happiness = (@happiness - 2)
  person.happiness=(person.happiness - 2)
  return "blah blah partisan blah lobbyist"
elsif topic == "weather"
  self.happiness=(@happiness + 1)
  person.happiness=(person.happiness + 1)
  return "blah blah sun blah rain"
end
end

end

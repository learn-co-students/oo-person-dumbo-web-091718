require 'pry'
class Person
 attr_reader :name
attr_accessor :bank_account, :happiness, :hygiene, :friend

 def initialize(name)

   @name=name
   @bank_account=25
   @happiness=8
   @hygiene=8
   @friend
 end

 def name
   @name
 end

 def happiness
   @happiness
 end

 def bank_account
   @bank_account
 end
 def hygiene
   @hygiene

 end
 def friend
   @friend
 end


 def happiness=(new_happiness)
   @happiness=new_happiness
   if @happiness>=10
   return @happiness = 10
 elsif @happiness<=0
   return @happiness = 0
   end
 end

 def hygiene=(new_hygiene)
   @hygiene=new_hygiene
   if @hygiene>=10
   return @hygiene= 10
 elsif @hygiene<=0
   return @hygiene = 0
   end

 def happy?
   if @happiness>7
     return true
   else return false
   end
 end
end
def clean?
 if @hygiene>7
   return true
 else return false
 end
end
def get_paid(salary)
 @bank_account += salary
 return "all about the benjamins"
end


def take_bath
self.hygiene += 4
puts self.hygiene
   return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.happiness +=2
  self.hygiene -=3
  return "♪ another one bites the dust ♫"
end

def call_friend(friend)

  @friend = friend
self.happiness += 3
@friend.happiness +=3

return "Hi #{friend.name}! It's #{name}. How are you?"

end
def start_conversation(person, topic)
 if topic == "politics"
   self.happiness-= 2
 person.happiness-=2
   'blah blah partisan blah lobbyist'
 elsif topic == "weather"
   self.happiness += 1
   person.happiness+=1
   'blah blah sun blah rain'
 else 'blah blah blah blah blah'
 end
end

end

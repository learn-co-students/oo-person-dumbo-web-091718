require "pry"

class Person

 attr_reader :name, :happiness, :hygiene
 attr_accessor :bank_account

 #function to initialize with name, bank balance
 def initialize(name)
   @name = name
   @bank_account = 25
   @happiness = 8
   @hygiene = 8
 end

     def happiness=(happy_num)
       @happiness = happy_num
         if happy_num > 10
         self.happiness = 10

         elsif
           happy_num < 0
           self.happiness = 0
         end
     end


     def hygiene=(hygiene_num)
       @hygiene = hygiene_num
       if hygiene_num > 10
         self.hygiene = 10
       elsif
         hygiene_num < 0
         self.hygiene = 0
       end

     end

     def happy?
       if self.happiness < 8
         return false
       else
         return true
       end
     end

     def clean?
       if self.hygiene >= 8
         return true
       else
         return false
       end
     end

     def get_paid(salary)
       self.bank_account = self.bank_account + salary
       return 'all about the benjamins'
     end

     def take_bath
       self.hygiene = @hygiene += 4
       return "♪ Rub-a-dub just relaxing in the tub ♫"
     end

     def work_out
       self.hygiene = @hygiene -= 3
       self.happiness = @happiness += 2
       return "♪ another one bites the dust ♫"
     end

     def call_friend(friend)
       self.happiness += 3

       friend.happiness += 3


       return "Hi #{friend.name}! It's #{self.name}. How are you?"

     end

     def start_conversation(friend,topic)
         if topic == "politics"
           friend.happiness -= 2
           self.happiness -= 2
            return 'blah blah partisan blah lobbyist'
          elsif
            topic == "weather"
             friend.happiness += 1
             self.happiness += 1
            return  'blah blah sun blah rain'
          else
            return "blah blah blah blah blah"

          end
     end


 # def bank_account
 #
 # end



binding.pry
puts "hi"
end

# our code goes here
require'pry'
class Person
attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene

  def happiness=(happiness)
   @happiness=[happiness,0,10].sort[1]
   
  end
  
  def hygiene=(hygiene)
   @hygiene=[hygiene,0,10].sort[1]
  end


  def initialize(name)
   @name = name 
   @bank_account = 25 
   @happiness = 8 
   @hygiene = 8 
  end

  def happy?
    @happiness > 7 ? true : false 
    #binding.pry
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
   self.bank_account += salary
   p 'all about the benjamins'
  end

  def take_bath
   self.hygiene += 4
   p '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out 
   self.hygiene -= 3 
   self.happiness += 2 
   p '♪ another one bites the dust ♫'
  end

  def call_friend(person)
  self.happiness += 3 
  person.happiness += 3 
  p "Hi #{person.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(person, topic)
    if topic== "politics"
        self.happiness -= 2 
        person.happiness -= 2 
        p'blah blah partisan blah lobbyist'

    elsif topic== "weather"
        self.happiness += 1
        person.happiness += 1 
        p 'blah blah sun blah rain'

    else 
    p 'blah blah blah blah blah'
    end
  end

end

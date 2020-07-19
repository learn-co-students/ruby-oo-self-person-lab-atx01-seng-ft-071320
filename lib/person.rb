# your code goes here
require 'pry'

class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end



#HOW AM I SUPPOSED TO LIMIT THE RANGE OF HYGIENE AND HAPPINESS
#NEEDS TO BE BETWEEN 0 AND 10



  def hygiene=(hygiene)
    @hygiene = hygiene.clamp(0, 10)
  end

  def happiness=(happiness)
    @happiness = happiness.clamp(0, 10)
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid (salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(self.hygiene+4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(self.hygiene-3)
    self.happiness=(self.happiness+2)
    "♪ another one bites the dust ♫"
  end

  def call_friend (person)
    happy_points = @happiness+3
    self.happiness=(happy_points)
    person.happiness=(person.happiness+3)
    "Hi #{person.name}! It's #{@name}. How are you?"
  end

  def start_conversation (name, topic)
    if topic == "politics"
      self.happiness=(self.happiness-2)
      name.happiness=(name.happiness-2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      name.happiness=(name.happiness+1)
      self.happiness=(self.happiness+1)
      "blah blah sun blah rain"
    elsif topic != "weather" || topic != "politics"
      "blah blah blah blah blah"
    end
  end

end

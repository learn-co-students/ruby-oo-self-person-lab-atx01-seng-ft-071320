require 'pry'
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8 )
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
       @happiness = happiness
       if happiness > 10
        @happiness = 10
       elsif happiness < 0
        @happiness = 0
       end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if hygiene > 10
         @hygiene = 10
        elsif hygiene < 0
         @hygiene = 0
        end
    end

    def happy?
        if @happiness > 7
            return true
        elsif @happiness
            false
        end
    end
    
    def clean?
        if @hygiene > 7
            return true
        elsif @hygiene
            false
        end
    end 
     
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene = hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        self.hygiene = hygiene
        @happiness += 2
        self.happiness = happiness
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        @happiness += 3
        friend.happiness += 3
        self.happiness = happiness
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

    end

end

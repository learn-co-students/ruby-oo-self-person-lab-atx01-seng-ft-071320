require 'pry'

class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account


    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8
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
        @bank_account += salary

        p "all about the benjamins"
    end 

    def take_bath
        @hygiene += 4 

        self.hygiene=(@hygiene)

        if @hygiene > 10
            @hygiene = 10 
        end 

        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        @hygiene -= 3 

        self.hygiene=(@hygiene)

        if hygiene < 0
            @hygiene = 0 
        end 

        @happiness += 2 

        self.happiness=(@happiness)

        if happiness > 10
            @happiness = 10 
        end 

        p "♪ another one bites the dust ♫"
    end 

    def call_friend(person)
        self.happiness += 3 
        person.happiness += 3 
        
        p "Hi #{person.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2 
            person.happiness -=2
            
            if @happiness < 0
                @happiness = 0 
            end 
        
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1 
            person.happiness += 1 

            if happiness > 10
                @happiness = 10 
            end 

            p "blah blah sun blah rain"
        else 
            p "blah blah blah blah blah"
        end
    end 
end 

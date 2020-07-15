require 'pry'
class Person 
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize (name)
        @name=name 
        @bank_account=25
        @happiness=8
        @hygiene=8
    end 

    def happiness= (level)
        @happiness=level 
        if @happiness > 10 
            @happiness=10 
        elsif @happiness < 0 
            @happiness=0
        end 
    end 

    def hygiene= (level)
        @hygiene=level 
        if @hygiene > 10 
            @hygiene=10 
        elsif @hygiene< 0 
            @hygiene=0
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

    def get_paid (salary)
        @bank_account+=salary 
        "all about the benjamins"
    end 

    def take_bath
        temp=@hygiene+4
        self.hygiene= temp
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out 
        self.happiness= (@happiness+2)
        self.hygiene= (@hygiene-3)
        "♪ another one bites the dust ♫"
    end 

    def call_friend(person)
        temp=person.happiness
        temp+=3
        person.happiness=temp 
        self.happiness= (@happiness+3)
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation (person, topic)
        if topic== "politics"
            temp=person.happiness
            temp-=2
            person.happiness=temp 
            self.happiness= (@happiness-2)
            "blah blah partisan blah lobbyist"
        elsif topic== "weather"
            temp=person.happiness
            temp+=1
            person.happiness=temp 
            self.happiness= (@happiness+1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end 
    end 





end 
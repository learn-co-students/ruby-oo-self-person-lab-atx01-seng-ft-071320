class Person 
attr_reader :name
attr_accessor :bank_account, :hygiene,  :happiness
@@happiness 
def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene

end
def hygiene 
if @hygiene < 0 
    @hygiene = 0 
end
    if @hygiene > 10
        @hygiene = 10 
    end
        @hygiene 
end


def happiness
if @happiness < 0 
    @happiness = 0
end
    if @happiness > 10 
    @happiness = 10 
    end
    @happiness
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
self.bank_account += salary
return 'all about the benjamins'

end
def take_bath
self.hygiene += 4 
@hygiene 
"♪ Rub-a-dub just relaxing in the tub ♫"

end

def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
end


def call_friend(instance)
    instance.happiness += 3
    self.happiness += 3
    "Hi #{instance.name}! It's #{self.name}. How are you?"
end

def start_conversation(instance, topic)
    if topic == "politics"
        self.happiness -= 2
        instance.happiness -= 2
        "blah blah partisan blah lobbyist"
    elsif 
     topic == "weather"
        self.happiness += 1
        instance.happiness += 1
        "blah blah sun blah rain"
    else
        "blah blah blah blah blah"

    end
        
        end
    end
class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(new_happiness)
    if new_happiness <=10 && new_happiness >=0
      @happiness = new_happiness
    elsif new_happiness >10
      @happiness = 10
    else new_happiness <0
      @happiness = 0 
    end
  end

  def hygiene=(new_hygiene)
    if new_hygiene <=10 && new_hygiene >=0
      @hygiene = new_hygiene
    elsif new_hygiene >10
      @hygiene = 10
    else new_hygiene <0
      @hygiene = 0 
    end
  end

  def clean?
    @hygiene > 7 ? true : false
  end 

  def happy?
    @happiness > 7 ? true : false
  end

  def get_paid amount 
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene += 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end 

  def work_out
    self.hygiene=(@hygiene -= 3)
    self.happiness=(@happiness += 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend friend
    friend.happiness=(@happiness += 3)
    self.happiness=(@happiness += 3)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end





end
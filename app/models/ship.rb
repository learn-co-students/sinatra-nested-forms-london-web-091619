class Ship
    @@Ship =[]
 attr_reader :name,:type, :booty 
 def initialize(name,type, booty)
    @name = name
    @type = type 
    @booty = booty
    @Ship << self
    
    end

    def self.all 
        @@Ship
    end
    
    def self.clear 
       @@Ship = []
    end
end
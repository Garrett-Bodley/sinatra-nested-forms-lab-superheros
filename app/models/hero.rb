class Hero

  attr_accessor :name, :bio, :power
  HEROS = []

  def initialize(args, team=nil)
    @name = args[:name]
    @bio = args[:bio]
    @power = args[:power]
    @team = team
    HEROS << self
  end

  def self.all
    HEROS
  end

end
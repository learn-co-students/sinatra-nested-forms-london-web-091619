class Pirate
  attr_accessor :name, :weight, :height

  @@all = []

  def self.all
    @@all
  end

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@all << self

    make_ships(params[:ships]) if params[:ships]
  end

  def make_ships(ships)
    ships.each do |ship|
      Ship.new(ship)
    end
  end
end

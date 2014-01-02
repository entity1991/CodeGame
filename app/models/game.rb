class Game < ActiveRecord::Base
  has_many :battles
  has_many :rules
  belongs_to :creator, :class_name => 'Player'
  has_and_belongs_to_many :players, :join_table => :battles_players

  attr_accessible :title

end
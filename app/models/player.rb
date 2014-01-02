class Player < ActiveRecord::Base
  has_many :games
  has_many :algorithms
  has_and_belongs_to_many :battles, :join_table => :battles_players
end
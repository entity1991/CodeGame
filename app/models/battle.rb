class Battle < ActiveRecord::Base
  belongs_to :game
  has_and_belongs_to_many :algorithms, :join_table => :battles_algorithms

end
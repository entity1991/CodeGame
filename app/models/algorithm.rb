class Algorithm < ActiveRecord::Base
  belongs_to :player
  has_and_belongs_to_many :battles, :join_table => :battles_algorithms

end
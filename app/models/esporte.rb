class Esporte < ActiveRecord::Base
  attr_accessible :modalidade

  validates :modalidade, :presence => true
  has_many :esporte_bixos
end
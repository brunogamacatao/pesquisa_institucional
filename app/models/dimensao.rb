class Dimensao < ActiveRecord::Base
  belongs_to :pesquisa
  has_many :perguntas
  
  attr_accessible :nome, :ordem, :pesquisa, :pesquisa_id, :perguntas_attributes
  accepts_nested_attributes_for :perguntas
end

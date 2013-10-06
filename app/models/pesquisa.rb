class Pesquisa < ActiveRecord::Base
  belongs_to :instituicao
  has_many :dimensoes
  
  attr_accessible :ano, :nome, :periodo, :dimensoes_attributes, :instituicao, :instituicao_id, :professor
  accepts_nested_attributes_for :dimensoes
end

class Curso < ActiveRecord::Base
  belongs_to :instituicao
  attr_accessible :codigo, :nome, :instituicao, :instituicao_id
end

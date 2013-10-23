class Instituicao < ActiveRecord::Base
  attr_accessible :nome
  
  has_many :cursos
  
  def to_s
    nome
  end
end

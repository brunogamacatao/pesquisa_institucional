class Usuario < ActiveRecord::Base
  attr_accessible :login, :nome
  
  validates_uniqueness_of :login
  has_many :respostas
  
  def aluno?
    login.length == 10
  end
  
  def ja_respondeu?(pesquisa)
    Resposta.where(:usuario_id => id).exists?
  end
  
  def curso
    puts Curso.all
    Curso.where(:codigo => login[3..5].to_i).first
  end
end

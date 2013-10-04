class Pergunta < ActiveRecord::Base
  belongs_to :dimensao
  attr_accessible :nome, :ordem, :dimensao, :dimensao_id
  attr_accessor :resposta
end

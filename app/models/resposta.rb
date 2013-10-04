class Resposta < ActiveRecord::Base
  belongs_to :pergunta
  belongs_to :grupo_de_resposta
  attr_accessible :resposta, :pergunta_id, :usuario_id
end

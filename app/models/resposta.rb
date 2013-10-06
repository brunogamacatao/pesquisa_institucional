class Resposta < ActiveRecord::Base
  belongs_to :pergunta
  belongs_to :usuario
  attr_accessible :resposta, :pergunta_id, :usuario_id
end

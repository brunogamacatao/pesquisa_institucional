class PesquisasController < ApplicationController
  def update
    pesquisa = params[:pesquisa]
    pesquisa[:dimensoes_attributes].each do |kd, dimensao|
      dimensao[:perguntas_attributes].each do |pergunta_id, pergunta|
        Resposta.create!(resposta: pergunta[:resposta], pergunta_id: pergunta_id, usuario_id: usuario_logado)
      end
    end
  end
end

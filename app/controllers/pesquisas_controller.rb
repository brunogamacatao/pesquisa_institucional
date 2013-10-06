class PesquisasController < ApplicationController
  def update
    pesquisa = params[:pesquisa]
    pesquisa[:dimensoes_attributes].each do |kd, dimensao|
      dimensao[:perguntas_attributes].each do |pd, pergunta|
        Resposta.create!(resposta: pergunta[:resposta], pergunta_id: pergunta[:id], usuario_id: usuario_logado.id)
      end
    end
  end
end

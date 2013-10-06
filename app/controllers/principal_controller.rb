class PrincipalController < ApplicationController
  before_filter :conteudo_privado
  
  def index
    if usuario_logado.aluno?
      @pesquisa = Pesquisa.where(:instituicao_id => usuario_logado.curso.instituicao).order("ano DESC, periodo DESC").first
    else
      @pesquisa = Pesquisa.where(:professor => true).order("ano DESC, periodo DESC").first
    end
  end
end

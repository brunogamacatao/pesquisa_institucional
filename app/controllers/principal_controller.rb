class PrincipalController < ApplicationController
  before_filter :conteudo_privado
  
  def index
    if usuario_logado.aluno?
      @pesquisa = Pesquisa.where(:instituicao_id => usuario_logado.curso.instituicao).order("ano DESC, periodo DESC").first
      redirect_to action: "ja_respondeu" if usuario_logado.ja_respondeu?(@pesquisa)
    else
      @pesquisa = Pesquisa.where(:professor => true).order("ano DESC, periodo DESC").first
      redirect_to action: "ja_respondeu" if usuario_logado.ja_respondeu?(@pesquisa)
    end
  end
  
  def ja_respondeu
  end
end

class PrincipalController < ApplicationController
  before_filter :conteudo_privado
  
  def index
    @pesquisa = Pesquisa.where(:instituicao_id => usuario_logado.curso.instituicao).order("ano DESC, periodo DESC").first
  end
end

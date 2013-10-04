#encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  
private
  def usuario_logado
    @usuario_logado ||= Usuario.where(:login => session[:usuario_login]).first if session[:usuario_login]
  end
  helper_method :usuario_logado
  
  def conteudo_privado
    redirect_to login_url, alert: "Você precisa se identificar para poder responder a pesquisa" if usuario_logado.nil?
  end
end

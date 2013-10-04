#encoding: utf-8
require 'net/ldap'

class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    puts params
    if params[:login].blank?
      flash.alert = "Você deve informar o login"
      redirect_to action: :new
    elsif params[:senha].blank?
      flash.alert = "Você deve informar a senha"
      redirect_to action: :new, login: params[:login]
    else
      usuario = authenticate(params[:login], params[:senha])
      if usuario
        session[:usuario_login] = usuario.login
        redirect_to root_url, notice: "Seja bem vindo(a) #{usuario.nome}"
      else
        flash.alert = "Usuário e/ou senha não conferem"
        redirect_to action: :new, login: params[:login]
      end
    end
  end
  
  def destroy
    session[:usuario_login] = nil
    redirect_to root_url, notice: "Obrigado por participar de nossa pesquisa"
  end
  
  private
  def authenticate(login, senha)
    dominio = 'cesed.local'

    ldap = Net::LDAP.new
    ldap.host = '192.168.250.2'
    ldap.port = 389
    ldap.auth "#{login}@#{dominio}", senha

    if ldap.bind
      return Usuario.where(:login => login).first_or_create do |usuario|
        result = ldap.search(base: "DC=cesed,DC=local", 
                             filter: Net::LDAP::Filter.eq("samaccountname", login), 
                             attributes: %w[ displayName ], 
                             return_result:true)
        usuario.nome = result.first.displayName.first
      end
    end
    return nil
  end
end

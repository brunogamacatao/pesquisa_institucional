class RelatoriosController < ApplicationController
  def index
    @qtd_alunos      = Usuario.where(:id => Resposta.select("usuario_id").group("usuario_id")).where("length(login) = 10").count()
    @qtd_professores = Usuario.where(:id => Resposta.select("usuario_id").group("usuario_id")).where("length(login) <> 10").count()
    
    @qtd_alunos_facisa = qtd_por_instituicao('FACISA')
    @qtd_alunos_fcm    = qtd_por_instituicao('FCM')
    @qtd_alunos_esac   = qtd_por_instituicao('ESAC')
  end
  
  private 
  def qtd_por_instituicao(instituicao)
    total = 0
    Instituicao.where(:nome => instituicao).first.cursos.each do |curso|
      qtd = Usuario.where(:id => Resposta.select("usuario_id").group("usuario_id")).where("length(login) = 10").where("login like ?", "___#{curso.codigo}____").count()
      total += qtd if qtd
    end
    total
  end
  
  helper_method :qtd_por_curso
  def qtd_por_curso(curso)
    Usuario.where(:id => Resposta.select("usuario_id").group("usuario_id")).where("length(login) = 10").where("login like ?", "___#{curso.codigo}____").count()
  end
end

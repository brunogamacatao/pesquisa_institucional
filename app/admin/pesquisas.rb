ActiveAdmin.register Pesquisa do
  index do
    column :nome
    column :professor
    column :ano
    column :periodo
    default_actions
  end
  
  form do |f|
    f.inputs "Dados da Pesquisa" do
      f.input :nome
      f.input :professor
      f.input :ano
      f.input :periodo
      f.input :instituicao
      f.inputs "Dimensoes" do
        f.has_many :dimensoes, :header => "" do |dimensao|
          dimensao.input :ordem
          dimensao.input :nome
          dimensao.input :_destroy, :as=>:boolean, :required => false, :label=>'Remove'
          dimensao.has_many :perguntas, :header => "Perguntas" do |pergunta|
            pergunta.input :ordem
            pergunta.input :nome
            pergunta.input :_destroy, :as=>:boolean, :required => false, :label=>'Remove'
          end
        end
      end
    end
    f.buttons
  end
end

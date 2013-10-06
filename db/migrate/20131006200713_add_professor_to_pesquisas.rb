class AddProfessorToPesquisas < ActiveRecord::Migration
  def change
    add_column :pesquisas, :professor, :boolean, :default => false
  end
end

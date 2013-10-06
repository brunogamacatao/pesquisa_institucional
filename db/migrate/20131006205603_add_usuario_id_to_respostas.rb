class AddUsuarioIdToRespostas < ActiveRecord::Migration
  def change
    add_column :respostas, :usuario_id, :integer
    add_index :respostas, :usuario_id
  end
end

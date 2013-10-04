class RemoveUsuarioIdFromRespostas < ActiveRecord::Migration
  def up
    remove_column :respostas, :usuario_id
  end

  def down
    add_column :respostas, :usuario_id, :integer
  end
end

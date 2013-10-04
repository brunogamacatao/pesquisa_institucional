class CreateRespostas < ActiveRecord::Migration
  def change
    create_table :respostas do |t|
      t.integer :resposta
      t.references :pergunta
      t.references :usuario

      t.timestamps
    end
    add_index :respostas, :pergunta_id
    add_index :respostas, :usuario_id
  end
end

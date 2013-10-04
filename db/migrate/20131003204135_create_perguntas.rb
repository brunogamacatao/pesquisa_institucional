class CreatePerguntas < ActiveRecord::Migration
  def change
    create_table :perguntas do |t|
      t.integer :ordem
      t.string :nome
      t.references :dimensao

      t.timestamps
    end
    add_index :perguntas, :dimensao_id
  end
end

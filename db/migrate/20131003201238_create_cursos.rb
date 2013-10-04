class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nome
      t.integer :codigo
      t.references :instituicao

      t.timestamps
    end
    add_index :cursos, :instituicao_id
  end
end

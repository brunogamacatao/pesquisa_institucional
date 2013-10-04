class CreatePesquisas < ActiveRecord::Migration
  def change
    create_table :pesquisas do |t|
      t.references :instituicao
      t.integer :ano
      t.integer :perioso
      t.string :nome

      t.timestamps
    end
    add_index :pesquisas, :instituicao_id
  end
end

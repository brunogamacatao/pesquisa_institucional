class CreateInstituicoes < ActiveRecord::Migration
  def change
    create_table :instituicoes do |t|
      t.string :nome

      t.timestamps
    end
  end
end

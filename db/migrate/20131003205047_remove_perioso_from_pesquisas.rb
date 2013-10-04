class RemovePeriosoFromPesquisas < ActiveRecord::Migration
  def up
    remove_column :pesquisas, :perioso
  end

  def down
    add_column :pesquisas, :perioso, :integer
  end
end

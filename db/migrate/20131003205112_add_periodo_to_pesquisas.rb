class AddPeriodoToPesquisas < ActiveRecord::Migration
  def change
    add_column :pesquisas, :periodo, :integer
  end
end

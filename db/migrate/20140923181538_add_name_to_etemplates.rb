class AddNameToEtemplates < ActiveRecord::Migration
  def change
    add_column :etemplates, :name, :string
  end
end

class AddDescriptionToEtemplates < ActiveRecord::Migration
  def change
    add_column :etemplates, :description, :text
  end
end

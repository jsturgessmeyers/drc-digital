class AddCodepenDataToEtemplates < ActiveRecord::Migration
  def change
    add_column :etemplates, :codepen_data, :text
  end
end

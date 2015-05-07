class CreateEtemplates < ActiveRecord::Migration
  def change
    create_table :etemplates do |t|

      t.timestamps
    end
  end
end

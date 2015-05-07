class AddAttachmentImageToEtemplates < ActiveRecord::Migration
  def self.up
    change_table :etemplates do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :etemplates, :image
  end
end

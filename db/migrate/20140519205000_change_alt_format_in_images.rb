class ChangeAltFormatInImages < ActiveRecord::Migration
  def change
    change_column :images, :alt, :text
  end
end

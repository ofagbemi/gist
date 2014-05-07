class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string   :article_id
      t.text     :short
      t.text     :medium
      t.text     :long
      t.integer  :order
      t.timestamps
    end
  end
end

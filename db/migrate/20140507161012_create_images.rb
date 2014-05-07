class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string   :section_id
      t.string   :article_id
      t.text     :caption
      t.string   :url
      t.string   :alt
      t.text     :attribution
      t.timestamps
    end
  end
end

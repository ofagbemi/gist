class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.string   :click_type
      t.string   :section_id
      t.string   :test_session_id
      t.timestamps
    end
  end
end

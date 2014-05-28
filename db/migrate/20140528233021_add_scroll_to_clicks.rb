class AddScrollToClicks < ActiveRecord::Migration
  def change
    add_column :clicks, :click_value, :string
  end
end

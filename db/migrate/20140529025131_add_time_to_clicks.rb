class AddTimeToClicks < ActiveRecord::Migration
  def change
    add_column :clicks, :date_time, :datetime
  end
end

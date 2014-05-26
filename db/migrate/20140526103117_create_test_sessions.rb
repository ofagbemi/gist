class CreateTestSessions < ActiveRecord::Migration
  def change
    create_table :test_sessions do |t|
      
      t.timestamps
    end
  end
end

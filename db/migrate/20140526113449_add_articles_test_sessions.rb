class AddArticlesTestSessions < ActiveRecord::Migration
  def change
    create_table :articles_test_sessions, :id => false do |t|
      t.string   :article_id
      t.string   :test_session_id
      t.timestamps
    end
  end
end

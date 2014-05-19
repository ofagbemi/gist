class ChangeSubtitleFormatInArticles < ActiveRecord::Migration
  def change
    change_column :articles, :subtitle, :text
  end
end

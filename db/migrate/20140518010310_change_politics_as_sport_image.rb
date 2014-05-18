class ChangePoliticsAsSportImage < ActiveRecord::Migration
  def change
    a = Article.find_by_title("Politics as Sport")
    a.images[0].url = "http://www.dixiesunnews.com/media/news/2012/10/23/photo/PresidentialDebatesMCT.jpg"
  end
end

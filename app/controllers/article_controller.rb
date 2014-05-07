class ArticleController < ApplicationController
  def root
    @articles = Article.find(:all)
  end

  def new
  end
  
  # Public: Handler for url to post new articles to
  #
  # Returns nothing
  def create
    main_image = Image.new(:url => params[:main_image_url],
                           :alt => params[:main_caption],
                           :caption => params[:main_caption],
                           :attribution => params[:main_attribution])
    
    main_image.save
    
    article = Article.new(:title => params[:title],
                          :subtitle => params[:subtitle],
                          :author => params[:author])
    article.images << main_image
    article.save
    
    sections = params[:sections]
    sections.each do |key, section|
    
      new_section = Section.new(section)
      new_section.article = article
      
      new_section.save
    end
    render :json => {
      status: "ok",
      redirect: "/article/#{article.id}"
    }
  end
  
  def view
    begin
      @article = Article.find params[:id]
    rescue ActiveRecord::RecordNotFound
      raise_404
    end
  end
end

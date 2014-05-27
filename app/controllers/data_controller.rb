class DataController < ApplicationController

  def start_session
    test_session = TestSession.create
    session[:session_id] = test_session.id
    redirect_to '/'
  end
  
  def end_session
    reset_session
    redirect_to '/'
  end

  def store
    if params[:article_id]
      test_session = TestSession.find_by_id session[:session_id]
      test_session.articles << Article.find_by_id(params[:article_id])
      test_session.save
    else
      click = Click.new(click_params(params))
      click.test_session_id = session[:session_id]
      click.save
    end
    
    head :ok, :content_type => 'text/html'
  end
  
  private
  def click_params params
    params.permit(:section_id, :click_type)
  end
end

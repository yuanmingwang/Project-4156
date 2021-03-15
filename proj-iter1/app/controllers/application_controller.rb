class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
    
  private

  def observable_redirect_to(url)
#     if integration_test?
#       render :text => "If this wasn't an integration test, you'd be redirected to: #{url}"
#     else
      redirect_to url
#     end
  end
    
    
    
end

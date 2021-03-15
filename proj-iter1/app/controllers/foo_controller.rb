class FooController < ApplicationController
  def redirecting_action
    redirect_to('https://webqr.com/')
  end
    
    
  def get_qrcode
      print 234
      redirect_to "https://webqr.com/"
#       redirect_to fluffys_path
  end
end
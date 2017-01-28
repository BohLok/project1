class SessionController < ApplicationController
  def new
  end
  
  def create
    @visitor = visitor.find_by(email: params[:email])
    if @visitor 
      redirect_to @visitor
    else
      render 'new'
    end
  end
  
  def destroy
  end

end

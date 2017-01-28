class SessionController < ApplicationController
  def new
  end
  
  def create
    @visitor = Visitor.find_by(email: params[:session][:email].downcase)
    if @visitor && @visitor.authenticate(params[:session][:password])
      flash[:success] = 'Loged in! Welcome!'
      redirect_to @visitor
    else
      flash.now[:danger] = 'Login failed!'
      render 'new'
    end
  end
  
  def destroy
  end

end

class VisitorsController < ApplicationController

def show
    @visitor = Visitor.find(params[:id])
end

def destroy
if @visitor = Visitor.find(params[:id])
  @visitor.destroy
  respond_to do |format| 
    format.html { redirect_to visitors_path } 
    format.xml { head :ok } 
  end
 end
end

def index
  @visitors = Visitor.all
 # raise @visitor.inspect
end


def new
  @visitor = Visitor.new
end

def create
  #redirect 
  @visitor = Visitor.new(secure_params)
  if @visitor.save
      flash[:sucess] = "toll"
      redirect_to @visitor
    else
      render 'new'
    end
  
  # redirect_to root_path
end

def secure_params
  params.require(:visitor).permit(:name)
end

end
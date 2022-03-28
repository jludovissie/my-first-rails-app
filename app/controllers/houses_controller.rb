class HousesController < ApplicationController
  def show 
    @house = House.find(params[:id])
  end

  def index
    @house = House.all 
  end
  
  def new
    @house = House.new(address: params[:address], sqfeet: params[:sqfeet], rooms: params[:rooms], bathrooms: params[:bathrooms], price: params[:price] )
  end
  
  def create 
    @house = House.new(params.require(:house).permit(:sqfeet, :rooms, :bathrooms, :price, :address))
    if @house.save = Agent.first
      flash[:notice] = "Congratulations, your listing is created"
      redirect_to @house
    else  
       render 'new'  
    end
  end
  
  def edit 
    @house = House.find(params[:id])
  end
  
  def update 
    @house = House.find(params[:id])
    if @house = House.update(params.require(:house).permit(:sqfeet, :rooms, :bathrooms, :price, :address))
      flash[:message] = "Your listing has been updated!"
      redirect_to @house
    else
    render 'edit'
    end
  end  
end  

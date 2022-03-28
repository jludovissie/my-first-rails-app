class AgentsController < ApplicationController
    def show 
        @agent = Agent.find(params[:id])
        @houses = @agent.houses
    end
    def index 
        @agents = Agent.all 
    end
    def new 
        @agent = Agent.new 
    end

    def create 
        @agent = Agent.new(user_params)
        if @agent.save 
            flash[:notice] = "welcome #{@agent.name}! You have successfully signed up!"
            redirect_to houses_path 
        end
    end

    def edit 
      @agent = Agent.find(params[:id])    
    end

    def update 
      @agent = Agent.find(params[:id])
      if @agent.update(user_params)
        flash[:notice] = "#{@agent}'s account information has been updated"
        redirect_to houses_path
      else  
        render 'new'        
      end  
    end

    private 
    def user_params
        params.require(:agent).permit(:name,:password,:phone,:broker)
    end
end
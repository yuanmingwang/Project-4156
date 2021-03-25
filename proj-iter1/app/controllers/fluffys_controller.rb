class FluffysController < ApplicationController

  def show
    print 123
    id = params[:id] # retrieve movie ID from URI route
    @fluffy = Fluffys.find(id) # look up movie by unique ID
    @events = Events.find(id)
    # will render app/views/movies/show.<extension> by default
  end

  def index
    @fluffy = Fluffys.all
    @events = Events.all
  end

  def new
    # default: render 'new' template
  end

  def create
    #@new_fluffy = Fluffys.new(:name => movie_params.name, :budget => movie_params.budget, :remaining_budget => movie_params.remaining_budget, :fluffy_coin => '0')
    new_params = fluffy_params.merge!(:fluffy_coin => '0')
    @fluffy = Fluffys.create!(new_params)
    print("new_params")
    print(new_params)
    flash[:notice] = "#{@fluffy.name} was successfully created."
    redirect_to fluffys_path

  end

  def edit
    @fluffy = Fluffys.find params[:id]
  end

  def update
    @fluffy = Fluffys.find params[:id]
    @fluffy.update_attributes!(movie_params)
    flash[:notice] = "#{@fluffy.name} was successfully updated."
    redirect_to fluffys_path(@fluffy)
  end

  def destroy
    @fluffy = Fluffys.find(params[:id])
    @fluffy.destroy
    flash[:notice] = "Movie '#{@fluffy.name}' deleted."
    redirect_to fluffys_path
  end
  
  def get_rewards
      print 123
      @fluffy = Fluffys.all
#       @fluffy.each do |fluffy|
          
#           fluffy.fluffy_coin = (fluffy.fluffy_coin.to_f + (100 * ((fluffy.budget.to_f - fluffy.remaining_budget.to_f)/fluffy.budget.to_f))).round(2)
#           fluffy.save
          Fluffys.update_fluffy_coin
#       end
      redirect_to fluffys_path
  end
    

  def reset_rewards
      Fluffys.reset_fluffy_coin
      redirect_to fluffys_path
  end
    
  def get_recommend
      @events = Events.all
      #Fluffys.update_fluffy_coin
      Fluffys.run_recommendation
      redirect_to fluffys_path
  end

  
  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def fluffy_params
    params.require(:fluffy).permit(:name, :budget, :remaining_budget, :fluffy_coin, :password)
  end
end

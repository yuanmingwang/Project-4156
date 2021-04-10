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
  
  def recommend
    id = params[:id]
    password = params[:password]
    @result = "bye"
    @events = Events.all
    @events, @result = Fluffys.run_recommendation
    #redirect_to recommend_path
    # default: render 'recommend' template
    @budget = @events[0].budget
    if params[:commit] == "Recommend to login"
        redirect_to user_path(params[:id], params[:password])
    end
  end

  def create
    #@new_fluffy = Fluffys.new(:name => movie_params.name, :budget => movie_params.budget, :remaining_budget => movie_params.remaining_budget, :fluffy_coin => '0')
    print("params")
    print(params)
    if params[:commit] == "Save Changes"
        #new_params = fluffy_params.merge!(:fluffy_coin => '0')
        new_params = Fluffys.merge_parm(fluffy_params)
        @fluffy = Fluffys.create!(new_params)
        print("new_params")
        print(new_params)
        flash[:notice] = "#{@fluffy.name} was successfully created. \n Your id is: #{@fluffy.id}"
        redirect_to fluffys_path
    elsif params[:commit] == "Login"
        print("fluffy_params.id + fluffy_params.password: ")
        print(fluffy_params)
        redirect_to user_path(fluffy_params[:id], fluffy_params[:password])
    end
  end
    
  def login
    
  end
    
  def login_submit
      
  end
  
  def pay
      @fluffy = Fluffys.find params[:id]
      remaining_budget = @fluffy.remaining_budget.to_i
      fluffy_coin = @fluffy.fluffy_coin.to_i
      budget = params[:budget].to_i
      @fluffy.remaining_budget = remaining_budget + fluffy_coin - budget
      @fluffy.save
      redirect_to pay(params[:id], params[:password])
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
      @fluffy = Fluffys.all
          Fluffys.update_fluffy_coin
      redirect_to fluffys_path
  end
  
  def user
      id = Integer(params[:id])
      @events = Events.all
      if Fluffys.is_outofRange(id)
          flash[:notice] = "User ID Does not exsit"
          redirect_to fluffys_path
      elsif Fluffys.is_too_small(id)
          flash[:notice] = "User ID can not be smaller than 1"
          redirect_to fluffys_path
      else
          @fluffy = Fluffys.find params[:id]
          if @fluffy.password != params[:password]
              flash[:notice] = "User ID: #{@fluffy.id} authentification failed"
              redirect_to fluffys_path
          end
      end
  end

  def reset_rewards
      Fluffys.reset_fluffy_coin
      redirect_to fluffys_path
  end
    
#   def get_recommend
#       @events = Events.all
#       #Fluffys.update_fluffy_coin
#       Fluffys.run_recommendation
#       redirect_to get_recommend_path
#   end

  
  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def fluffy_params
    params.require(:fluffy).permit(:name, :budget, :remaining_budget, :fluffy_coin, :password, :id)
  end
end

class FluffysController < ApplicationController

  def show
    print 123
    id = params[:id] # retrieve movie ID from URI route
    @movie = Fluffys.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index
    @movies = Fluffys.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Fluffys.create!(movie_params)
    flash[:notice] = "#{@movie.name} was successfully created."
    redirect_to fluffys_path
  end

  def edit
    @movie = Fluffys.find params[:id]
  end

  def update
    @movie = Fluffys.find params[:id]
    @movie.update_attributes!(movie_params)
    flash[:notice] = "#{@movie.name} was successfully updated."
    redirect_to fluffys_path(@movie)
  end

  def destroy
    @movie = Fluffys.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.name}' deleted."
    redirect_to fluffys_path
  end
  
  def get_rewards
      print 123
      @movies = Fluffys.all
      @movies.each do |fluffy|
          
          fluffy.fluffy_coin = (fluffy.fluffy_coin.to_f + (100 * ((fluffy.budget.to_f - fluffy.remaining_budget.to_f)/fluffy.budget.to_f))).round(2)
          fluffy.save
      end
      redirect_to fluffys_path
  end
  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def movie_params
    params.require(:movie).permit(:name, :budget, :remaining_budget, :fluffy_coin)
  end
end

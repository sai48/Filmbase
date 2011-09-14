class AddModeratorToFilmsController < ApplicationController
  # GET /add_moderator_to_films
  # GET /add_moderator_to_films.xml
  def index
    @add_moderator_to_films = AddModeratorToFilm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @add_moderator_to_films }
    end
  end

  # GET /add_moderator_to_films/1
  # GET /add_moderator_to_films/1.xml
  def show
    @add_moderator_to_film = AddModeratorToFilm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @add_moderator_to_film }
    end
  end

  # GET /add_moderator_to_films/new
  # GET /add_moderator_to_films/new.xml
  def new
    @add_moderator_to_film = AddModeratorToFilm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @add_moderator_to_film }
    end
  end

  # GET /add_moderator_to_films/1/edit
  def edit
    @add_moderator_to_film = AddModeratorToFilm.find(params[:id])
  end

  # POST /add_moderator_to_films
  # POST /add_moderator_to_films.xml
  def create
    @add_moderator_to_film = AddModeratorToFilm.new(params[:add_moderator_to_film])

    respond_to do |format|
      if @add_moderator_to_film.save
        format.html { redirect_to(@add_moderator_to_film, :notice => 'Add moderator to film was successfully created.') }
        format.xml  { render :xml => @add_moderator_to_film, :status => :created, :location => @add_moderator_to_film }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @add_moderator_to_film.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /add_moderator_to_films/1
  # PUT /add_moderator_to_films/1.xml
  def update
    @add_moderator_to_film = AddModeratorToFilm.find(params[:id])

    respond_to do |format|
      if @add_moderator_to_film.update_attributes(params[:add_moderator_to_film])
        format.html { redirect_to(@add_moderator_to_film, :notice => 'Add moderator to film was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @add_moderator_to_film.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /add_moderator_to_films/1
  # DELETE /add_moderator_to_films/1.xml
  def destroy
    @add_moderator_to_film = AddModeratorToFilm.find(params[:id])
    @add_moderator_to_film.destroy

    respond_to do |format|
      format.html { redirect_to(add_moderator_to_films_url) }
      format.xml  { head :ok }
    end
  end
end

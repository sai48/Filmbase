class AddUsersToFilmsController < ApplicationController
  # GET /add_users_to_films
  # GET /add_users_to_films.xml
  def index
    @add_users_to_films = AddUsersToFilm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @add_users_to_films }
    end
  end

  # GET /add_users_to_films/1
  # GET /add_users_to_films/1.xml
  def show
    @add_users_to_film = AddUsersToFilm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @add_users_to_film }
    end
  end

  # GET /add_users_to_films/new
  # GET /add_users_to_films/new.xml
  def new
    @add_users_to_film = AddUsersToFilm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @add_users_to_film }
    end
  end

  # GET /add_users_to_films/1/edit
  def edit
    @add_users_to_film = AddUsersToFilm.find(params[:id])
  end

  # POST /add_users_to_films
  # POST /add_users_to_films.xml
  def create
    @add_users_to_film = AddUsersToFilm.new(params[:add_users_to_film])

    respond_to do |format|
      if @add_users_to_film.save
        format.html { redirect_to(@add_users_to_film, :notice => 'Add users to film was successfully created.') }
        format.xml  { render :xml => @add_users_to_film, :status => :created, :location => @add_users_to_film }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @add_users_to_film.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /add_users_to_films/1
  # PUT /add_users_to_films/1.xml
  def update
    @add_users_to_film = AddUsersToFilm.find(params[:id])

    respond_to do |format|
      if @add_users_to_film.update_attributes(params[:add_users_to_film])
        format.html { redirect_to(@add_users_to_film, :notice => 'Add users to film was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @add_users_to_film.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /add_users_to_films/1
  # DELETE /add_users_to_films/1.xml
  def destroy
    @add_users_to_film = AddUsersToFilm.find(params[:id])
    @add_users_to_film.destroy

    respond_to do |format|
      format.html { redirect_to(add_users_to_films_url) }
      format.xml  { head :ok }
    end
  end
end

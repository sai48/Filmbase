class FilmsController < ApplicationController
  before_filter :check_admin_user, :except=>['index', 'show', 'themes', 'users', 'autf']
  before_filter :check_user_presence, :only=>'show'

  def index
    @films = Film.page(params[:page])
  end

  def show
    @film = Film.full_load.find(params[:id])
    @current_genre=@film.genre #for layout
    @count = @film.users.count
  end

  def new
    @film = Film.new
  end

  def edit
    @film = Film.full_load.find(params[:id])
  end

  def create
    @film = Film.new(params[:film])
    if @film.save
      redirect_to @film, :notice => 'Фильм добавлен.'
    else
      render :action => "new"
    end
  end

  def update
    @film = Film.full_load.find(params[:id])
    if @film.update_attributes(params[:film])
      redirect_to @film, :notice => 'Фильм сохранен.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @film = Film.find(params[:id])
    @film.destroy
    redirect_to films_url, :notice=>"Фильм удален"
  end
  def autf
    @film = Film.find(params[:id])
    @user = @current_user
    if @film.users.include? @user
     redirect_to film_themes_path(@film)
    else 
    @film.users << @user
     redirect_to film_path(@film), :notice=>"Вы успешно вступили в группу"
    end 
  end

  def users
    @film = Film.find(params[:id])
    @users = @film.users
  end
end

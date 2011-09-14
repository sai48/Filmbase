class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  protect_from_forgery

  before_filter :check_user

  private
  def check_user
    @current_user=current_user
  end

  def check_regular_user
    unless @current_user
      render :text=>"Доступ для незарегистрированных пользователей запрещен", :layout => 'application'
    end
  end

  def check_admin_user
    unless @current_user && @current_user.admin?
      render :text=>"Доступ запрещен", :layout => 'application'
    end
  end
  
  def moderator
  if @access == true
    if @current_film.user_id == @current_user
      @current_user.admin = true
      end
    end
  end
  
  def check_user_group
    @ufilm = Film.find(params[:id]).user
  end
  
  
  def check_user_presence
      @current_film = Film.find(params[:id])
      if @current_film.users.include?(@current_user)
        @access = false
      else
        @access = true
      end
    end
  end

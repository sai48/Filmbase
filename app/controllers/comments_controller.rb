class CommentsController < ApplicationController
  before_filter :check_regular_user
  before_filter :moderator
  # GET /comments
  # GET /comments.xml
  def index
    @film = Film.find(params[:film_id])
    @theme = Theme.find(params[:theme_id])
    @comments = Comment.where(:theme_id=>@theme.id)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.xml
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.xml
  def new
    @film = Film.find(params[:film_id])
    @theme = Theme.find(params[:theme_id])
    @comment = @theme.comments.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @film = Film.find(params[:film_id])
    @theme = Theme.find(params[:theme_id])
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.xml
  def create
    @theme = Theme.find(params[:theme_id])
    @comment = @theme.comments.build(params[:comment])
    if @current_user
      @comment.commenter = @current_user.login
    end

    respond_to do |format|
      if @comment.save
        format.html { redirect_to(film_theme_comments_path, :notice => 'Comment was successfully created.') }
        format.xml  { render :xml => @comment, :status => :created, :location => @comment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.xml
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to(film_theme_comments_path, :notice => 'Comment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.xml
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(film_theme_comments_path) }
      format.xml  { head :ok }
    end
  end
end

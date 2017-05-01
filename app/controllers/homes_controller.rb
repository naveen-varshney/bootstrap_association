class HomesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authenticate_userr!, :only => [:add_author_book]
  def index
    @author = Author.all
    @comment = Comment.all
    @user = User.all
    @game = Game.all

  end
  # def new
  #   @user = User.new
  #   @event = @user.events.build
  #   @comment = @user.comments.build
  #   @game = @user.games.build
  #
  # end
  def add_author_book
    puts params
    byebug
    @author = Author.create(name: params[:author_name])
    @author.books.create(name: params[:book_name])
    #render json: 'true'
    redirect_to root_path
  end
  # def create
  #   puts params
  #   byebug
  # end
end

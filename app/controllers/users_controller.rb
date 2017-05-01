class UsersController < ApplicationController
  def new
    @user = User.new
    @event = @user.events.build
    @comment = @user.comments.build
    @game = @user.games.build
    @address = @user.build_address

  end
  def create
    puts params
    byebug
    @user = User.new(user_params)
    if @user.save!
      redirect_to root_path
    else
      flash[:error] = "Can't save problems occured"
      redirect_to root_path
    end

  end
  def user_params
    params.require(:user).permit(:id,:name,address_attributes: [:city,:street,:country],events_attributes: [:title],comments_attributes: [:body],games_attributes: [:title])

  end
end

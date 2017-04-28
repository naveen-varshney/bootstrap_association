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

  end
end

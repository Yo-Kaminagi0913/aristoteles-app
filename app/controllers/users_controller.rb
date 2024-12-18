class UsersController < ApplicationController
end
def show
  @user = User.find(params[:id])
end
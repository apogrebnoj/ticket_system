class UsersController < ApplicationController
  # Add before actions, if necessary

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle successful user creation
    else
      # Handle errors
    end
  end

  # ... other actions ...

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
  end
end

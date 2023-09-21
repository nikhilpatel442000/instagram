# app/controllers/users_controller.rb

class UsersController < ApplicationController
  # Other actions (e.g., index, show, edit, update, destroy) go here

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to 'https://instagram.com', allow_other_host: true
    else
      # Handle validation errors (e.g., re-render the form with error messages)
    end
  end

  private

  def user_params
    params.permit(:email, :password) # Adjust permitted parameters as needed
  end
end

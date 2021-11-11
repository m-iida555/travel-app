class UsersController < ApplicationController
  def show
      @password=User.find(current_user.id)
  end
end

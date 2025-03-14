class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
    #current_user.update(user_params)*これまちがえたやつら
    #redirect_to"messages"
    #render :edit, status: :unprocessable_entity
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end

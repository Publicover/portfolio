class UsersController < ApplicationController
  def new
  end

  def create
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:f_name, :l_name, :email, :password, :company_id, :role)
    end
end

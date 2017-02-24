class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all

    render json: @users
  end

  def show
    render json: @user
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end

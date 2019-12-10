class UsersController < ApplicationController
  before_action :set_user, only: [:show, :preview]

  # GET /users
  def index
    @users = User.all

    render json: JSON.dump(@users.map{ |user| Users::Index.new(user).present}), status: :ok
  end

  # GET /users/1
  def show
    render json: JSON.dump(Users::Show.new(@user).present), status: :ok
  end

  def preview
    render json: JSON.dump(Users::Preview.new(@user).present), status: :ok
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :phone, :address, :email, :category_id)
    end
end

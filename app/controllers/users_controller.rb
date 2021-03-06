class UsersController < ApplicationController
  # before_action :require_signin!, only: [:update]
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
      session[:user_id] = @user.id
  		flash[:notice] = "You have signed up successfully."
  		redirect_to projects_path
  	else
  		render :new
  	end
  end

  def show
  	@user = User.find(params[:id])
  end

  def edit
		@user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      session[:user_id] = @user.id
      flash[:notice] = "Profile has been updated."
      redirect_to projects_path
    else
      flash[:alert] = "Profiled has not been updated."
      render "edit"
    end
  end

  private

  	def user_params
  		params.require(:user).permit(:name, :password, :email, :password_confirmation)
  	end

end

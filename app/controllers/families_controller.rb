class FamiliesController < ApplicationController
  def show
    @family = Family.find(params[:id])
  end

  def new
    @family = Family.new
  end

  def create
    # params[:user_1_invited]
    @family = Family.new(family_params)
    @user = @family.users
    if @family.save
      FamilyUser.create(family_id: family.id, user_id: user.id)
      User.invite!({ email: :email }, current_user)
      redirect_to family_path(:id)
    else
      render :new
    end
  end

  private
  def family_params
    params.require(:family).permit(:photo)
  end
end

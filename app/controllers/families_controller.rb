class FamiliesController < ApplicationController
  def show
    @family = current_user.families.find(params[:id])
  end

  def new
    @family = Family.new
  end

  def create
    # params[:user_1_invited]
    # User.invite!(email: 'new_user@example.com', name: 'John Doe')
    @family = current_user.families.new(family_params)
    if @family.save
      FamilyUser.create(family_id: family.id, user.id)
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

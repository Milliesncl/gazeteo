class FamiliesController < ApplicationController
  def index
    @families = current_user.families
  end

  def show
    @family = Family.find(params[:id])
  end

  def new
    @family = Family.new
  end

  def create
    # params[:user_1_invited]
    @family = Family.new(family_params)
    if @family.save
      FamilyUser.create(family_id: @family.id, user_id: current_user.id)
      redirect_to family_path(@family.id)
    else
      render :new
    end
  end

  def add_member
    @family = Family.find(params[:id])
    add_user = User.invite!({ email: params[:user]}, current_user)
    FamilyUser.create(family_id: @family.id, user_id: add_user.id)

    redirect_to family_path(@family.id)
  end

  def edit
    @family = Family.find(params[:id])
  end

  def update
    @family = Family.find(params[:id])
    if @family.update(family_params)
      redirect_to families_path
    else
      render :edit
    end
  end

  private
  def family_params
    params.require(:family).permit(:name, :photo)
  end
end

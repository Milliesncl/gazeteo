class FamiliesController < ApplicationController
  def show
    @family = current_user.families.find(params[:id])
  end

  def new
    @family = Family.new
  end

  def create
    @family = current_user.families.new(family_params)
    if @family.save
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

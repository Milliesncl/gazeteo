class GazettesController < ApplicationController
  def new
    @gazette = Gazette.new
  end

  def create
        @gazette = Gazette.new
        if @gazette.save
            redirect_to gazette_path(@gazette)
        else
            render :new
        end
    end
end

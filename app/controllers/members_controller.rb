class MembersController < ApplicationController
    before_action get_family

    def show
        @member = Member.find(params[:id])
    end

    def new
        @member = Member.new
    end

    def create
        @member = Member.new(members_params)
        if @member.save
            redirect_to family_path(@family.id)
        else
            render :new
        end
    end

    def edit
    end
    
    def update
    end

    def delete
    end

    private
    def get_family
        @family = Family.find(params[:family_id])
    end

    def members_params
        params.require(:member).permit(:first_name, :last_name, :birthday, :address, :photo)
    end
end

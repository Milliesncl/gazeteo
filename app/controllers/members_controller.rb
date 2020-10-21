class MembersController < ApplicationController
    before_action :get_family

    def show
        @member = Member.find(params[:id])
    end

    def new
        @member = Member.new
    end

    def create
        @member = @family.members.new(members_params)
        if @member.save
            redirect_to family_path(@family)
        else
            render :new
        end
    end

    def edit
        @member = Member.find(params[:id])
    end

    def update
        @member = Member.find(params[:id])
        if @member.update(members_params)
            redirect_to family_member_path(@family.id, @member.id)
        else
            render :edit
        end
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

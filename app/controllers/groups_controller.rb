class GroupsController < ApplicationController
    def show
        @group = Group.find(params[:id])
    end

    def new
        @group = Group.new
    end

    def create
        @group = Group.new(group_params)
        @group.user = current_user
        
        if @group.save
            redirect_to @group
        else
            render :new, notice: "I'm gay"
        end
    end

    private
        def group_params
            params.require(:group).permit(:name)
        end
end
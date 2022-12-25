class CardsController < ApplicationController
    def new
        @group = Group.find(params[:group_id])
    end

    def create
        @group = Group.find(params[:group_id])
        if @card = @group.cards.create(card_params)
            redirect_to @group
        else
            redirect_to @group, notice: "I'm gay"
        end
    end

    private
        def card_params
            params.require(:card).permit(:term, :definition, :group)
        end
end
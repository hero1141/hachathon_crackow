class BlackboardsController < ApplicationController
    def create
        @blackboard = Blackboard.create(name: params[:blackboard][:name], data: params[:blackboard][:data], thumbnail: params[:blackboard][:thumbnail])
        redirect_to blackboards_path()
    end

    def index
        @blackboards = Blackboard.all
    end

    def show
        @blackboard = Blackboard.find(params[:id])
    end
end

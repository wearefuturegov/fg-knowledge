class GuidesController < ApplicationController
    before_action :gate_access
    
    def index
        @teams = Team.order(:name)
    end

    def show
        @guide = Guide.find(params[:id])
    end
end

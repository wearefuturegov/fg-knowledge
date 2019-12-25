class GuidesController < ApplicationController
    before_action :gate_access
    
    def index
        @teams = Team.all
    end

    def show
        @guide = Guide.find(params[:id])
    end
end

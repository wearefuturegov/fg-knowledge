class TeamsController < ApplicationController
    before_action :gate_access
    
    def show
        @team = Team.find(params[:id])
    end
end

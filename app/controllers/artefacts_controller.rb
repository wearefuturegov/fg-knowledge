class ArtefactsController < ApplicationController
    before_action :gate_access

    def index
        @teams = Team.order(:name)
    end

    def show
        redirect_to Artefact.find(params[:id]).link
    end
end

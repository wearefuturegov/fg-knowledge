class ArtefactsController < ApplicationController
    before_action :gate_access

    def index
        @artefacts = Artefact.all
        @teams = Team.all
    end

    def show
        redirect_to Artefact.find(params[:id]).link
    end
end

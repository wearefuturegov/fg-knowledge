class ArtefactsController < ApplicationController
    def index
        @artefacts = Artefact.all
        @teams = Team.all
    end
end

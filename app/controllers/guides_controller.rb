class GuidesController < ApplicationController
    def index
        @teams = Team.all
        # @collections = Collection.all
    end

    def show
        @guide = Guide.find(params[:id])
    end
end

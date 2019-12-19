class GuidesController < ApplicationController
    def index
        @collections = Collection.all
    end

    def show
        @guide = Guide.find(params[:id])
    end
end

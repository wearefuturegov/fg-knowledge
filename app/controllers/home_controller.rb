class HomeController < ApplicationController
    def index
        @teams = Team.all
        @isHome = true
    end
end

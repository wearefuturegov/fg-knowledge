class HomeController < ApplicationController
    before_action :gate_access
    
    def index
        @teams = Team.order(:name)
        @is_home = true
        @recently_updated = recently_updated
    end

    private

    def recently_updated(num=4)
        list = []
        [Guide, Artefact].each do |m|
            list << m.all.sort_by(&:updated_at).flatten
        end
        list.flatten
            .sort_by(&:updated_at)
            .reverse
            .first(num)
    end

end
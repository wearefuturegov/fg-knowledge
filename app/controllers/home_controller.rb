class HomeController < ApplicationController
    def index
        @teams = Team.order(:name)
        # home page layout
        @is_home = true
        @recently_updated = recently_updated
    end

    private

    def recently_updated(num=3)
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
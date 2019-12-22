class HomeController < ApplicationController
    def index
        @teams = Team.order(:name)
        @is_home = true
        @recently_updated = recently_updated
    end

    private

    def recently_updated(num=4)

        guides = Guide.order(:updated_at).limit(4)
        artefacts = Artefact.order(:updated_at).limit(4)
        [guides, artefacts].flatten.sort_by{ |r| r[:updated_at] }.reverse.first(num)

        # list = []
        # [Guide, Artefact].each do |m|
        #     list << m.all.sort_by(&:updated_at).flatten
        # end
        # list.flatten
        #     .sort_by(&:updated_at)
        #     .reverse
        #     .first(num)
    end

end
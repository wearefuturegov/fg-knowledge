class SearchController < ApplicationController
    def results
        @results = PgSearch.multisearch(params["query"])
    end
end

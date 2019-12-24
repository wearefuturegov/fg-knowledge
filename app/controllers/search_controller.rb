class SearchController < ApplicationController
    def results
        if params["type"].nil?
            @results = PgSearch.multisearch(params["query"])
        else
            @results = PgSearch.multisearch(params["query"])
                .where({
                    :searchable_type => params["type"]
                })
        end
    end
end

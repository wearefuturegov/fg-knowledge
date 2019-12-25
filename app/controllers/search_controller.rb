class SearchController < ApplicationController
    before_action :gate_access
    
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

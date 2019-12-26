module SearchHelper
    def checked(value)
        if params.has_key?(:type) && params[:type].include?(value)
            "checked"
        else
            ""
        end
    end
end

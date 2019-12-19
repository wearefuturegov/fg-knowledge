module Admin
  class ArtefactsController < Fae::BaseController

    private

    def build_assets
      @item.build_image if @item.image.blank?
    end

  end
end

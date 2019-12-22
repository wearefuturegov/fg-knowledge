class Team < ApplicationRecord
  include Fae::BaseModelConcern
  def fae_display_field
    name
  end

  has_fae_image :image

  has_many :artefacts

  has_many :collections
  has_many :guides, through: :collections

end

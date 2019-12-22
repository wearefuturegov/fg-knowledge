class Artefact < ApplicationRecord
  include Fae::BaseModelConcern
  include PgSearch::Model
  multisearchable against: [:name, :team, :description]

  has_fae_image :image

  def fae_display_field
    name
  end

  belongs_to :team
end

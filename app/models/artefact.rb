class Artefact < ApplicationRecord
  include Fae::BaseModelConcern
  include PgSearch::Model
  multisearchable against: [
    :name, 
    :team_name, 
    :description
  ]

  validates :name, :description, :link, :team, presence: true

  has_fae_image :image

  def team_name
    self.team.name
  end

  def fae_display_field
    name
  end

  belongs_to :team
end

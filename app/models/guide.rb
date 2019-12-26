class Guide < ApplicationRecord
  include Fae::BaseModelConcern
  
  include PgSearch::Model
  multisearchable(
    against: [
      :name, 
      :short_description, 
      :body,
      :collection_name, 
      :team_name
    ],
  )

  validates :name, 
    :body, 
    :position, 
    :collection, 
    :short_description, 
  presence: true

  acts_as_list add_new_at: :bottom
  default_scope { order(:position) }

  def collection_name
    self.collection.name
  end

  def description
    self.short_description
  end

  def team_name
    self.collection.team.name
  end
  
  def fae_display_field
    name
  end

  belongs_to :collection
  has_one :team, through: :collection
end

class Guide < ApplicationRecord
  include Fae::BaseModelConcern
  include PgSearch::Model
  multisearchable(
    against: [:name, :body, :collection],
    additional_attributes: -> (guide) { { collection_id: guide.collection_id } }
  )

  acts_as_list add_new_at: :bottom
  default_scope { order(:position) }

  def fae_display_field
    name
  end

  belongs_to :collection
end

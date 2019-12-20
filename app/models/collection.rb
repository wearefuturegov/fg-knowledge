class Collection < ApplicationRecord
  include Fae::BaseModelConcern

  def fae_display_field
    name
  end

  belongs_to :team
  has_many :guides
end

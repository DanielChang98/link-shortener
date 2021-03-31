class Visitor < ApplicationRecord
  belongs_to :link
  validates :link_id, presence: true
end

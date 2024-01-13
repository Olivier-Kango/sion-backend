class RequestedProduct < ApplicationRecord
  validates :name, :request_count, presence: true
end

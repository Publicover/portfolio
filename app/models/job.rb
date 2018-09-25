class Job < ApplicationRecord
  has_many :clients, dependent: :destroy
end

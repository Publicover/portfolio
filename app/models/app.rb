class App < ApplicationRecord
  has_many :teches, dependent: :destroy
end

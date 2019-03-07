class Core < ApplicationRecord
  belongs_to :body, optional: true
  belongs_to :deity
  delegate :world, to: :deity
end

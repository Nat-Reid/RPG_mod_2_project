class Core < ApplicationRecord
  belongs_to :deity
  belongs_to :body, optional: true
end

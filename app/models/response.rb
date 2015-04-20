class Response < ActiveRecord::Base
  belongs_to :quote
  has_one :emotion
end

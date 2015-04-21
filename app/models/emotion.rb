class Emotion < ActiveRecord::Base
  has_many :responses
end

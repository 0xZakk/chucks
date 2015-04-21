class Response < ActiveRecord::Base
  belongs_to :quote
  has_one :emotion

  # def calculate_total_responses
  # => goes to the database and gets the total number of responses for a given question_id
  
  # def calculate_emotional_responses
  # => goes to the database and gets the total number of responses for a given question_id, broken out by emotion_id

  # def get_description_from_wikipedia
  # take quote.topic and search wikipedia for description to render in show view

end

class Quote < ActiveRecord::Base
  has_many :responses
  has_many :emotions, through: :responses

  # def show ?
  # => display content of quote
  # => some_quote_object.content - ??

  # def get_quote
  # => return as hash
end

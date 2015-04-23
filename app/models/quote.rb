class Quote < ActiveRecord::Base
  has_many :responses
  has_many :emotions, through: :responses

  def self.quote_topics
    all_topic = Quote.all.map{|x| [x.topic] }
    return all_topic.unshift("Filter by Topic")      
  end

  def self.retrieve_quote(t)
    if t == "Filter by Topic"
      return Quote.all.sample
    else
      return Quote.find_by topic: t
    end
  end
end

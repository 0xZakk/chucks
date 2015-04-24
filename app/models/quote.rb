class Quote < ActiveRecord::Base
  has_many :responses
  has_many :emotions, through: :responses

  def self.quote_category
    all_category = Quote.all.map{|x| [x.category] }
    return all_category.unshift("Filter by Category")
  end

  def self.retrieve_quote(c)
    if c == "Filter by Category"
      return Quote.all.sample
    else
      return Quote.where(category: c).sample
    end
  end

  def self.trending
    @quotes = Quote.all

    @quotes.map do |x|
        r = x.responses
      r.map do |y|
        y.emotion_id
      end#ends second do
    end#ends first do
  end #ends self.trending

  def self.mode(x)
	  f = {}
    fmax = 0
    m = nil
    x.each do |v|
      f[v] ||=0
      f[v] +=1
      fmax,m = f[v], v if f[v] > fmax
    end
    return m
	end
end

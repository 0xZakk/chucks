# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Quote.create(category: "politics", topic: "Gay Rights", body: "gays are great", author: "Hillary Clinton", location: "Washington D.C.", date: "04/04/2014")
# Quote.create(category: "politics", topic: "Transgender Rights", body: "trans people are great", author: "Bill Clinton", location: "Washington D.C.", date: "04/04/2014")
# Quote.create(category: "politics", topic: "Abortion", body: "Abortion is bad", author: "Mit Romney", location: "Saltlake City, Utah", date: "08/01/2014")
# Quote.create(category: "politics", topic: "Immigration", body: "Stupid Immigrants", author: "Rick Perry", location: "Dallas, Texas", date: "08/03/2012")
# Quote.create(category: "politics", topic: "Foreign Policy", body: "Iran Iran Iran", author: "Ted Cruz", location: "Washington D.C.", date: "03/05/2011")
# Quote.create(category: "politics", topic: "Gay Rights", body: "gays are the best", author: "Barack Obama", location: "Washington D.C.", date: "09/09/2013")


Emotion.create(title: "Happiness", url: "https://cdn4.iconfinder.com/data/icons/imoticons/105/imoticon_3-128.png")
Emotion.create(title: "Sadness", url: "https://cdn4.iconfinder.com/data/icons/imoticons/105/imoticon_20-128.png")
Emotion.create(title: "Anger", url: "https://cdn4.iconfinder.com/data/icons/imoticons/105/imoticon_16-128.png")
Emotion.create(title: "Disgust", url: "https://cdn4.iconfinder.com/data/icons/imoticons/105/imoticon_21-128.png")
Emotion.create(title: "Fear", url: "https://cdn4.iconfinder.com/data/icons/imoticons/105/imoticon_16-128.png")
Emotion.create(title: "Surprise", url: "/assets/images/surprised.png")


Response.create([
  {quote_id: 7, emotion_id: 6},
  {quote_id: 5, emotion_id: 2},
  {quote_id: 2, emotion_id: 3},
  {quote_id: 4, emotion_id: 4},
  {quote_id: 1, emotion_id: 5},
  {quote_id: 9, emotion_id: 4},
  {quote_id: 2, emotion_id: 6},
  {quote_id: 7, emotion_id: 3},
  {quote_id: 4, emotion_id: 4},
  {quote_id: 5, emotion_id: 5},
  {quote_id: 9, emotion_id: 3},
  {quote_id: 9, emotion_id: 3},
  {quote_id: 3, emotion_id: 1},
  {quote_id: 4, emotion_id: 1},
  {quote_id: 8, emotion_id: 1},
  {quote_id: 3, emotion_id: 2},
  {quote_id: 7, emotion_id: 5},
  {quote_id: 6, emotion_id: 5},
  {quote_id: 5, emotion_id: 2},
  {quote_id: 5, emotion_id: 5},
  {quote_id: 1, emotion_id: 3},
  {quote_id: 4, emotion_id: 1},
  {quote_id: 7, emotion_id: 3},
  {quote_id: 6, emotion_id: 2},
  {quote_id: 2, emotion_id: 6},
  {quote_id: 5, emotion_id: 3},
  {quote_id: 5, emotion_id: 2},
  {quote_id: 8, emotion_id: 4},
  {quote_id: 9, emotion_id: 4},
  {quote_id: 8, emotion_id: 4},
  {quote_id: 2, emotion_id: 3},
  {quote_id: 9, emotion_id: 4},
  {quote_id: 8, emotion_id: 1},
  {quote_id: 9, emotion_id: 4},
  {quote_id: 9, emotion_id: 5},
  {quote_id: 5, emotion_id: 3},
  {quote_id: 5, emotion_id: 1},
  {quote_id: 2, emotion_id: 4},
  {quote_id: 6, emotion_id: 2},
  {quote_id: 5, emotion_id: 1},
  {quote_id: 8, emotion_id: 2},
  {quote_id: 9, emotion_id: 1},
  {quote_id: 8, emotion_id: 4},
  {quote_id: 3, emotion_id: 1},
  {quote_id: 2, emotion_id: 4},
  {quote_id: 1, emotion_id: 2},
  {quote_id: 4, emotion_id: 6},
  {quote_id: 6, emotion_id: 5},
  {quote_id: 7, emotion_id: 6},
  {quote_id: 5, emotion_id: 1},
  {quote_id: 20, emotion_id: 2},
  {quote_id: 13, emotion_id: 3},
  {quote_id: 15, emotion_id: 4},
  {quote_id: 13, emotion_id: 6},
  {quote_id: 15, emotion_id: 6},
  {quote_id: 18, emotion_id: 4},
  {quote_id: 19, emotion_id: 6},
  {quote_id: 12, emotion_id: 3},
  {quote_id: 12, emotion_id: 5},
  {quote_id: 12, emotion_id: 1},
  {quote_id: 11, emotion_id: 1},
  {quote_id: 15, emotion_id: 2},
  {quote_id: 11, emotion_id: 2},
  {quote_id: 13, emotion_id: 6},
  {quote_id: 20, emotion_id: 4},
  {quote_id: 14, emotion_id: 2},
  {quote_id: 20, emotion_id: 1},
  {quote_id: 12, emotion_id: 5},
  {quote_id: 11, emotion_id: 4},
  {quote_id: 10, emotion_id: 5},
  {quote_id: 15, emotion_id: 6},
  {quote_id: 13, emotion_id: 1},
  {quote_id: 20, emotion_id: 5},
  {quote_id: 18, emotion_id: 5},
  {quote_id: 19, emotion_id: 6},
  {quote_id: 12, emotion_id: 6},
  {quote_id: 10, emotion_id: 2},
  {quote_id: 11, emotion_id: 1},
  {quote_id: 20, emotion_id: 5},
  {quote_id: 20, emotion_id: 4},
  {quote_id: 14, emotion_id: 3},
  {quote_id: 16, emotion_id: 5},
  {quote_id: 20, emotion_id: 1},
  {quote_id: 16, emotion_id: 4},
  {quote_id: 12, emotion_id: 3},
  {quote_id: 13, emotion_id: 3},
  {quote_id: 10, emotion_id: 5},
  {quote_id: 20, emotion_id: 3},
  {quote_id: 10, emotion_id: 1},
  {quote_id: 19, emotion_id: 4},
  {quote_id: 14, emotion_id: 4},
  {quote_id: 18, emotion_id: 3},
  {quote_id: 11, emotion_id: 2},
  {quote_id: 18, emotion_id: 2},
  {quote_id: 18, emotion_id: 6},
  {quote_id: 13, emotion_id: 5},
  {quote_id: 13, emotion_id: 4},
  {quote_id: 18, emotion_id: 6},
  {quote_id: 20, emotion_id: 5},
  {quote_id: 11, emotion_id: 2}
])

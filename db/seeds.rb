# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Quote.create(category: "politics", topic: "Gay Rights", body: "gays are great", author: "Hillary Clinton", location: "Washington D.C.", date: "04/04/2014")
Quote.create(category: "politics", topic: "Transgender Rights", body: "trans people are great", author: "Bill Clinton", location: "Washington D.C.", date: "04/04/2014")
Quote.create(category: "politics", topic: "Abortion", body: "Abortion is bad", author: "Mit Romney", location: "Saltlake City, Utah", date: "08/01/2014")
Quote.create(category: "politics", topic: "Immigration", body: "Stupid Immigrants", author: "Rick Perry", location: "Dallas, Texas", date: "08/03/2012")
Quote.create(category: "politics", topic: "Foreign Policy", body: "Iran Iran Iran", author: "Ted Cruz", location: "Washington D.C.", date: "03/05/2011")
Quote.create(category: "politics", topic: "Gay Rights", body: "gays are the best", author: "Barack Obama", location: "Washington D.C.", date: "09/09/2013")


Emotion.create(title: "Happness", url: "https://www.iconfinder.com/icons/210815/emoticon_face_happy_smile_smiley_icon#size=128")
Emotion.create(title: "Sadness", url: "https://www.iconfinder.com/icons/210798/emoticon_face_sad_icon#size=128")
Emotion.create(title: "Anger", url: "www.iconfinder.com/icons/210815/emoticon_face_happy_smile_smiley_icon#size=128")
Emotion.create(title: "Disgust", url: "www.iconfinder.com/icons/210815/emoticon_face_happy_smile_smiley_icon#size=128")
Emotion.create(title: "Fear", url: "www.iconfinder.com/icons/210815/emoticon_face_happy_smile_smiley_icon#size=128")
Emotion.create(title: "Surprise", url: "www.iconfinder.com/icons/210815/emoticon_face_happy_smile_smiley_icon#size=128")


random_quote = Quote.first
quote_responses = random_quote.responses.create([
  # {quote_id: "", emotion_id: "", zipcode: "", gender: "", poli_orientation:},

  {emotion_id: 1, zipcode: "123141", gender: "male", poli_orientation: "tea party"},
  {emotion_id: 3, zipcode: "123411", gender: "female", poli_orientation: "green party"},
  {emotion_id: 4, zipcode: "901821", gender: "male", poli_orientation: "democrat"},
  {emotion_id: 5, zipcode: "12341", gender: "female", poli_orientation: "republican"},
  {emotion_id: 6, zipcode: "123412", gender: "male", poli_orientation: "constitution party"}
  ])

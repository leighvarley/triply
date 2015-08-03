# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recommendation.destroy_all
Comment.destroy_all

Atlanta = Location.create!(city_name: "Atlanta", state_name: "Georgia" country_name: "United States", photo_url: "")
San_Francisco = Location.create!(city_name: "San Francisco", state_name: "California", country_name: "United States", phot_url: "")

Dr_Bombays = Atlanta.recommendation.create!(body: "Looking for a great place to post up and do some work, to read a book, or to catch up with a friend over a pot of tea? Check out Dr. Bombay's Underwater Tea Party!")
Tea_Garden = San_Francisco.recommendation.create!(body: "The Japanese Tea Garden, a five acre garden within Golden Gate State Park is an awesome spot. Built in 1894 as part of the World's Fair, it is the oldest public tea garden in the United States.")

Dr_Bombays_comment1 = Dr_Bombays.comment.create!(body: "Dr. Bombay's is my favorite coffee shop in Atlanta. It's located in Candler Park, there's free wi-fi, and the walls are lined with built in bookcases.")
Dr_Bombays_comment2 = Dr_Bombays.comment.create!(body: "The walls at Dr. Bombay's are lined with books that are for sale for just a dollar each. All proceeds from book sales benefit scholarship opportunities for young women in India.")
Tea_Garden_comment1 = Tea_Garden.comment.create!(body: "The Japaneese Tea Gardens are an awesome solace from the hustle and bustle of San Fran!")

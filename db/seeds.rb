# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Location.destroy_all
Recommendation.destroy_all
Comment.destroy_all

Morgan = User.create!(name: "Morgan Rote", email: "roti@gmail.com", password: "peanutbutter&jelly")
Sarah = User.create!(name: "Sarah Lavatai", email: "slava@gmail.com", password: "milk&cookies")
Leanne = User.create!(name: "Leanne Naramore", email: "leannimal@yahoo.com", password: "crunchygranola")
Lindsey = User.create!(name: "Lindsey Brock", email: "lkdb@aol.com", password: "ashevilleawesome")
Grayson = User.create!(name: "Grayson Hill", email: "ghill@bellsouth.net", password: "iamgraysonroberts")
Lucas = User.create!(name: "Lucas Tower", email: "ltower@gmail.com", password: "honeybees")

Asheville = Location.create!(city_name: "Asheville", state_name: "North Carolina", location_description:"Tucked between the Blue Ridge and Smoky Mountains, Asheville is teeming with mountain views, art, hiking, kayaking, microbreweries, and much more.")
Atlanta = Location.create!(city_name: "Atlanta", state_name: "Georgia", location_description: "Originally established in 1837 at the intersection of two railroad lines, Atlanta remains the primary transportation hub of the Southeastern United States. Atlanta is known for its music and arts culture, shopping, dining, and more.")
Baltimore = Location.create!(city_name: "Baltimore", state_name: "Maryland")
Bozeman = Location.create!(city_name: "Bozeman", state_name: "Montana")
Memphis = Location.create!(city_name: "Memphis", state_name: "Tennessee")
New_York = Location.create!(city_name: "New York City", state_name: "New York")
Portland = Location.create!(city_name: "Portland", state_name: "Oregon")
San_Francisco = Location.create!(city_name: "San Francisco", state_name: "California")
Washington_DC = Location.create!(city_name: "Washington", state_name: "DC")

Dr_Bombays = Recommendation.create!(recommended_place: "Dr. Bombay's Underwater Tea Party", user_id: Sarah.id, location_id: Atlanta.id, body: "Looking for a great place to post up and do some work, to read a book, or to catch up with a friend over a pot of tea? Check out Dr. Bombay's Underwater Tea Party!")
Piedmont_Park = Recommendation.create!(recommended_place: "Piedmont Park", user_id: Leanne.id, location_id: Atlanta.id, body: "Piedmont Park is a 189-acre park in the heart of Midtown. It's an awesome spot to hang out and relax. The park is walking distance to Trader Joe's as well as many restaurants - bring a blanket and a picnic! There is also a dog park as well as an outdoor pool, and there are frequently concerts and festivals at the park in the spring, fall, and summer.")
Tea_Garden = Recommendation.create!(recommended_place: "Japanese Tea Garden", user_id: Morgan.id, location_id: San_Francisco.id, body: "The Japanese Tea Garden, a five acre garden within Golden Gate State Park is an awesome spot. Built in 1894 as part of the World's Fair, it is the oldest public tea garden in the United States.")
Point_Reyes = Recommendation.create!(recommended_place: "Point Reyes National Seashore", user_id: Lindsey.id, location_id: San_Francisco.id, body: "Point Reyes is located about 30 miles north of San Francisco, but it is well worth the drive. If the view's California's coast don't take your breath away, perhaps the elk or the elephant seals will.")
Blue_Ridge_Parkway = Recommendation.create!(recommended_place: "Blue Ridge Parkway", user_id: Leanne.id, location_id: Asheville.id, body: "If your trip involves driving into Asheville, try to make part of the trip on the Blue Ridge Parkway. Don't plan on getting anywhere fast (the speed limit is 45mph), but do plan to take an some incredible views of the Blue Ridge Mountains. The parkway runs for 469 miles through 29 Virginia and North Carolina counties, mostly along teh Blue Ridge, a mountain chain that is part of the Appalachian Mountains.")
Edible_Park = Recommendation.create!(recommended_place: "George Washington Carver Edible Park", user_id: Morgan.id, location_id: Asheville.id, body: "This is truly a hidden gem! This park is tucked away in a residential neighborhood less than one mile from downtown Asheville and it contains over forthy fruit and nut trees, vines, and shrubs. Visitors are encouraged to explore the park and sample its fruits and nuts.")
Jack_of_the_Wood = Recommendation.create!(recommended_place: "Jack of the Wood", user_id: Lindsey.id, location_id: Asheville.id, body: "Asheville is teeming with breweries, so it's touch to pick a favorite, but Jack of the Wood is definitely in my top five. Check out the live bluegrass jam sessions that take place every Thursday.")
Sweet_Peas = Recommendation.create!(recommended_place: "Sweetpeas Hostel", user_id: Grayson.id, location_id: Asheville.id, body: "This place is a sweet deal. The hostel is clean and well-run, and it is in the heart of downtown Asheville. The people are cool and the prices run from about $25-$60/night depending on whether you have a private or shared room.")
Arboretum = Recommendation.create!(recommended_place: "Arboretum", user_id: Lucas.id, location_id: Washington_DC.id, body: "This place is amazing - 446 aces of preserved land just 2 miles north of the Capitol building! If you live in NW DC and don't frequent the Arboretum, you are missing out!")
Hyalite = Recommendation.create!(recommended_place: "Hyalite Canyon", user_id: Lucas.id, location_id: Bozeman.id, body: "Awesome hiking - and just 30 miles from Bozeman!")

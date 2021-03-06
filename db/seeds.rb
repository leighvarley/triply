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

Morgan = User.create!(name: "Morgan Rote", email: "roti@gmail.com", password: "peanutbutter&jelly")
Sarah = User.create!(name: "Sarah Lavatai", email: "slava@gmail.com", password: "milk&cookies")
Leanne = User.create!(name: "Leanne Naramore", email: "leannimal@yahoo.com", password: "crunchygranola")
Lindsey = User.create!(name: "Lindsey Brock", email: "lkdb@aol.com", password: "ashevilleawesome")
Grayson = User.create!(name: "Grayson Hill", email: "ghill@bellsouth.net", password: "iamgraysonroberts")
Lucas = User.create!(name: "Lucas Tower", email: "ltower@gmail.com", password: "honeybees")
Charlie = User.create!(name: "Charlie Halt", email: "chalt@gmail.com", password: "1857NorthAve")

Asheville = Location.create!(city_name: "Asheville", state_name: "North Carolina", location_description:"Tucked between the Blue Ridge and Smoky Mountains, Asheville is teeming with mountain views, art, hiking, kayaking, microbreweries, and much more.")
Atlanta = Location.create!(city_name: "Atlanta", state_name: "Georgia", location_description: "Originally established in 1837 at the intersection of two railroad lines, Atlanta remains the primary transportation hub of the Southeastern United States. Atlanta is known for its music and arts, shopping, dining, and more.")
Bozeman = Location.create!(city_name: "Bozeman", state_name: "Montana", location_description: "Bozeman is at the heart of big sky country. Take a trip in the winter and hit the slopes and come back in the summer to raft the Gallatin River. Heck, maybe you should just move here.")
Memphis = Location.create!(city_name: "Memphis", state_name: "Tennessee", location_description: "Memphis is the home of the blues and the birthplace of rock ’n’ roll!")
New_York = Location.create!(city_name: "New York City", state_name: "New York", location_description: "There’s something for everyone in this urban jungle!")
Portland = Location.create!(city_name: "Portland", state_name: "Oregon", location_description: "Are you a microbrew-loving vegan environmentalist? Welcome to Utopia.")
San_Francisco = Location.create!(city_name: "San Francisco", state_name: "California")
Washington_DC = Location.create!(city_name: "Washington", state_name: "DC")

Dr_Bombays = Recommendation.create!(recommended_place: "Dr. Bombay's Underwater Tea Party", user_id: Sarah.id, location_id: Atlanta.id, body: "Looking for a great place to post up and do some work, to read a book, or to catch up with a friend over a pot of tea? Check out Dr. Bombay's Underwater Tea Party!")
Piedmont_Park = Recommendation.create!(recommended_place: "Piedmont Park", user_id: Leanne.id, location_id: Atlanta.id, body: "Piedmont Park is a 189-acre park in the heart of Midtown. It's an awesome spot to hang out and relax. The park is walking distance to Trader Joe's as well as many restaurants - bring a blanket and a picnic! There is also a dog park as well as an outdoor pool, and there are frequently concerts and festivals at the park in the spring, fall, and summer.")
Tea_Garden = Recommendation.create!(recommended_place: "Japanese Tea Garden", user_id: Morgan.id, location_id: San_Francisco.id, body: "The Japanese Tea Garden, a five acre garden within Golden Gate State Park is an awesome spot. Built in 1894 as part of the World's Fair, it is the oldest public tea garden in the United States.")
Point_Reyes = Recommendation.create!(recommended_place: "Point Reyes National Seashore", user_id: Lindsey.id, location_id: San_Francisco.id, body: "Point Reyes is located about 30 miles north of San Francisco, but it is well worth the drive. If the view's California's coast doesn't take your breath away, perhaps the elk or the elephant seals will.")
Blue_Ridge_Parkway = Recommendation.create!(recommended_place: "Blue Ridge Parkway", user_id: Leanne.id, location_id: Asheville.id, body: "If your trip involves driving into Asheville, try to make part of the trip on the Blue Ridge Parkway. Don't plan on getting anywhere fast (the speed limit is 45mph), but do plan to take an some incredible views of the Blue Ridge Mountains. The parkway runs for 469 miles through 29 Virginia and North Carolina counties, mostly along the Blue Ridge, a mountain chain that is part of the Appalachian Mountains.")
Edible_Park = Recommendation.create!(recommended_place: "George Washington Carver Edible Park", user_id: Morgan.id, location_id: Asheville.id, body: "This is truly a hidden gem! This park is tucked away in a residential neighborhood less than one mile from downtown Asheville and it contains over forty fruit and nut trees, vines, and shrubs. Visitors are encouraged to explore the park and sample its fruits and nuts.")
Jack_of_the_Wood = Recommendation.create!(recommended_place: "Jack of the Wood", user_id: Lindsey.id, location_id: Asheville.id, body: "Asheville is teeming with breweries, so it's tough to pick a favorite, but Jack of the Wood is definitely in my top five. Check out the live bluegrass jam sessions that take place every Thursday night.")
Sweet_Peas = Recommendation.create!(recommended_place: "Sweetpeas Hostel", user_id: Grayson.id, location_id: Asheville.id, body: "This place is a sweet deal. The hostel is clean and well-run, and it is in the heart of downtown Asheville. The people are cool and the prices run from about $25-$60/night depending on whether you have a private or shared room.")
Arboretum = Recommendation.create!(recommended_place: "Arboretum", user_id: Lucas.id, location_id: Washington_DC.id, body: "This place is amazing - 446 aces of preserved land just two miles north of the Capitol building! If you live in NW DC and don't frequent the Arboretum, you are missing out!")
Hyalite = Recommendation.create!(recommended_place: "Hyalite Canyon", user_id: Lucas.id, location_id: Bozeman.id, body: "Awesome hiking - and just 30 miles from Bozeman!")
Sun_Studios = Recommendation.create!(recommended_place: "Sun Studios", user_id: Sarah.id, location_id: Memphis.id, body: "Check out Sun Studios — the recording studio where Elvis, Johnny Cash, and many other musicians made their first recordings. After your tour, walk one block south to hear some live music on Beale Street.")
Civil_Rights = Recommendation.create!(recommended_place: "National Civil Rights Museum", user_id: Lindsey.id, location_id: Memphis.id, body: "Don’t miss the National Civil Rights Museum - it’s an incredibly powerful experience. The museum is built around the former Lorraine Motel, where Martin Luther King, Jr. was assassinated in 1968.")
Central_Park = Recommendation.create!(recommended_place: "Central Park", user_id: Morgan.id, location_id: New_York.id, body: "Take a stroll through Central Park, a 843 acre oasis in the center of Manhattan.")
Kennedy_School = Recommendation.create!(recommended_place: "McMenamins Kennedy School", user_id: Sarah.id, location_id: Portland.id, body: "Looking for a place to crash in Portland? Check out McMenamins Kennedy School! Originally built in 1915, this former elementary school has been converted into 57 awesome guest suites. Even if you don’t stay the night, drop by to check out the hotel’s restaurant, movie theatre, bar, or soaking pool, all of which are open to the public.")
Powells = Recommendation.create!(recommended_place: "Powell's Books", user_id: Charlie.id, location_id: Portland.id, body: "No trip to Portland is complete without an afternoon exploring Powell’s - the largest independent bookstore in the world!")

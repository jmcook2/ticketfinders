categories = ['Music', 'Opera', 'Theater', 'Concerts']
sports =     ['American Football', 'Baseball', 'Basketball', 'Boxing', 'Cricket', 'Football',
              'Golf', 'Hockey', 'Horse Racing', 'MMA', 'Motorcycling', 'Motor Racing', 'Olympics', 'Rugby',
              'Special Events', 'Tennis']
sports.each do |sport|
  Category.create(description: sport, sports: true)
end
categories.each do |category|
  Category.create(description: category, sports: false)
end
football = Category.where(description: "Football").ids
opera = Category.where(description: "Opera").ids
concerts = Category.where(description: "Concerts").ids
football_competitions = ['UEFA Cup', 'Premier League', 'FA Cup']
football_competitions.each do |comp|
  Competition.create(name: comp, category_id: football)
end
opera_competitions = ['La Scala', 'Sydney Opera House']
opera_competitions.each do |opera_comp|
  Competition.create(name: opera_comp, category_id: opera)
end
football_players = ['Arsenal', 'Manchester Utd', 'West Ham', 'Newcastle', 'Everton']
concerts_players = ['Madonna', 'U2', 'Kings of Leon', 'Enya', 'Kate Bush', 'Adele']
football_players.each do |player|
  Player.create(name: player, category_id: football)
end
concerts_players.each do |singer|
  Player.create(name: singer, category_id: concerts)
end
venues = ['Hammersmith Apollo', 'Fenway Park', 'TD Garden', 'London Palladium', 'Royal Albert Hall',
          'O2 Arena', 'Old Trafford', 'Emirates', 'Sydney Opera House', 'Paris Opera House']
venues.each do |venue|
  Venue.create(name: venue, capacity: rand(40000), city: 'Boston', country: 'USA', address: 'Boston, USA')
end
# Use to create random datetimes for events
# rand(6.months).seconds.from_now

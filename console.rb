require('pry')
require_relative('./models/artists')
require_relative('./models/album')

Album.delete_all
Artist.delete_all

artist1 = Artist.new({'name' => 'John'})
artist1.save

# artist1.name = 'Mash'
# artist1.update
# # artist1.delete

album1 = Album.new({
  'title' => 'Yesterday',
  'genre' => 'rock',
  'artist_id' => artist1.id
  })

  album2 = Album.new({
    'title' => 'Yest',
    'genre' => 'pop',
    'artist_id' => artist1.id
    })


album1.save
album2.save
# album1.title = 'today'
# album1.update
# album1.delete


binding.pry
nil

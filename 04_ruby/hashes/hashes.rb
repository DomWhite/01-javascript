require "pry"

song_title = "hello"
song_artist = "lionel richie"
song_released = 1983

song = ["hello", "lionel richie", 1983]

song = {
	'title' => 'hello',
	'artist' => 'lionel richie',
	'released' => 1983
}

# song['title']
# => "hello"
# song['artist']
# => "lionel richie"
# song.keys
# => ["title", "artist", "released"]
# song.values
# => ["hello", "lionel richie", 1983]

song = {
	:title => 'hello',
	:artist => 'lionel richie',
	:released => 1983
}

# song[:title]
# => "hello"
# song[:artist]
# => "lionel richie"
# song.keys
# => [:title, :artist, :released]
# song.values
# => ["hello", "lionel richie", 1983]

binding.pry
# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself



# Pseudocode
# Code is mixed into the actual class


# Initial Solution
class Song 
	#setting attr 
	attr_reader = :title
	attr_reader = :artist
	#initializing instance variables 
	def initialize title, artist
		@title = title
		@artist = artist
	end
	#setting variable for playing title track 
	def play
		"playing #{title}"
	end
end
	#creating our class variable for a playlist 
class Playlist
	#initializing tracks 
	def initialize *tracks
		@tracks = tracks
	end
	#adding tracks
	def add *tracks
		@tracks.concat(tracks)
	end
	#removing tracks
	def remove track
		@tracks.delete track
	end
	#determining if track is incuded in playlist 
	def includes? track
		@tracks.include? track
	end
	#How many track are in the playlist 
	def num_of_tracks
		@tracks.count	 
	end
	#play playlist 
	def play_all
	end
end



# Refactored Solution





# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)

p (my_playlist.num_of_tracks == 5)
going_under.play
my_playlist.remove(angels)
p (my_playlist.includes?(lying_from_you) == true)

my_playlist.play_all
my_playlist.display







# Reflection
=begin 
This was a good exercise and introduction to EDD.  Due to the nature of this exercise, I found it difficult to 
write lengthy pseudocode.  I also found it fairly difficult to refactor this code.  It already is as simple as I can 
make it.  

=end  
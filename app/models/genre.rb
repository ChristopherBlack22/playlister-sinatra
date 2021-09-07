require_relative "./sluggable.rb"

class Genre < ActiveRecord::Base
    has_many :song_genres
    has_many :songs, through: :song_genres
    has_many :artists, through: :songs 

    include Sluggable::Instance_methods
    extend Sluggable::Class_methods

end 
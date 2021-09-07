require_relative "./sluggable.rb"

class Song <ActiveRecord::Base
    belongs_to :artist
    has_many :song_genres
    has_many :genres, through: :song_genres

    include Sluggable::Instance_methods
    extend Sluggable::Class_methods

end 
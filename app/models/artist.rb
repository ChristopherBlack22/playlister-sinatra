require_relative "./sluggable.rb"

class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs

    include Sluggable::Instance_methods
    extend Sluggable::Class_methods

end 
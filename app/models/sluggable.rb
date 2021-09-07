module Sluggable

    module Instance_methods
        def slug
            self.name.downcase.gsub(" ", "-")
        end 
    end 

    module Class_methods
        def find_by_slug(slug)
            self.all.find do |instance|
                instance.slug == slug
            end 
        end 
    end

end 
class SightingSerializer

    def initialize(sighting_object)
        @sighting = sighting_object
    end
    
    def to_serialized_json
        @sighting.to_json(:include => {
          :bird => {:only => [:name, :species]},
          :location => {:only => [:latitude, :longitude]}
        }, :except => [:updated_at])
    end
#to clean up the to_serialized_json method and make it easier to read, we can rewrite the method defining a variable called options
#assign options to a hash and define two keys on that hash, :include and :except and assign them the same values as before
    # def to_serialized_json
    #     options = {
    #     include: {
    #         bird: {
    #         only: [:name, :species]
    #         },
    #         location: {
    #         only: [:latitude, :longitude]
    #         }
    #     },
    #     except: [:updated_at],
    #     }
    #     @sighting.to_json(options)
    # end


end
class SightingsController < ApplicationController
    def index
        sightings = Sighting.all
        render json: SightingSerializer.new(sightings).to_serialized_json
    end

    def show
        sighting = Sighting.find_by_id(params[:id])
        if sighting
            render json: SightingSerializer.new(sighting).to_serialized_json
        else
            render json: {message: 'No bird to see here'}
        end
    end
end

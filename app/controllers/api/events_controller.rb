module API

    class EventsController < ApplicationController
      def create
        event = Event.new(event_params)
        if event.save
          render nothing: true, status: 204 #location: event  would set location  header to url event/:id
          #returning nothing: true returns a empty response body
        else
          render json: event.errors, status: 422
        end
      end

    private
      def event_params
        params.require(:event).permit(:title,:description)
      end

    end

end

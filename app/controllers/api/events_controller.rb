module API

    class EventsController < ApplicationController
      def create
        event = Event.new(event_params)
        if event.save
          render json: event, status: 201
        end
      end

    private
      def event_params
        params.require(:event).permit(:title,:description)
      end

    end

end

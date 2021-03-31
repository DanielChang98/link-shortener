class VisitorsController < ApplicationController

    def show
        @selected_link = Link.find(params[:id])
        render 'visitor.html.erb'
    end
    
end

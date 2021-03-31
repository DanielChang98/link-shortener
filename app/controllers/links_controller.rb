class LinksController < ApplicationController

    def create
        shortener = Shortener.new(link_params[:original_url])
        @link = shortener.generate_short_link

        if @link.persisted?
            respond_to :js
        else
            render 'error.js.erb'
        end
    end

    def show
        link = Link.find_by(lookup_code: params[:lookup_code])
        link.update(counter: link.counter + 1)
        link.visitors.create(ip: request.remote_ip)
        redirect_to link.original_url
    end

    private

    def link_params
        params.require(:link).permit(:original_url)
    end
end
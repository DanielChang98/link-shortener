class HomeController < ApplicationController
    def index
        @link = Link.new
        @link_all = Link.all
    end
end

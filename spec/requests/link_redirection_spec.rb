require 'rails_helper'

RSpec.describe "link redirection", type: :request do

    it "redirects to the original URL for a given short link" do
        url = "https://www.coingecko.com/en/exchanges/lbank"
        shortener = Shortener.new(url)
        link = shortener.generate_short_link

        get link.shortened_url
        
        expect(response).to redirect_to link.original_url  
    end
end
require 'digest/sha2'

class Shortener
    attr_reader :url

    def initialize(url)
        @url = url
    end

    def generate_short_link
        Link.create(original_url: url, lookup_code: lookup_code)
    end

    def lookup_code
        code = get_fresh_code
        code
    end

    private

    def get_fresh_code
        SecureRandom.uuid[0..6]
    end

end
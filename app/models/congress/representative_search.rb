module Congress
  class RepresentativeSearch
    include HTTParty
    base_uri Settings.base_uri

    attr_accessor :zip

    def initialize(options = {})
      self.zip = options[:zip]
    end

    def results
      response
    end

    private
    def response
      self.class.get(url)
    end

    def url
      "/legislators/locate?apikey=#{Settings.api_key}&zip=#{zip}"
    end
  end
end

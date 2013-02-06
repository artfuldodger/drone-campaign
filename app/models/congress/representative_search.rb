module Congress
  class RepresentativeSearch
    include HTTParty
    base_uri Settings.base_uri

    attr_accessor :zip

    def initialize(options = {})
      self.zip = options[:zip]
    end

    def results
      raw_results.map { |attributes| Representative.new(attributes) }
    end

    private
    def raw_results
      response['results'].each do |result|
        unwanted_attributes.each { |unwanted_attribute| result.delete(unwanted_attribute) }
      end
    end

    def response
      self.class.get(url)
    end

    def url
      "/legislators/locate?apikey=#{Settings.api_key}&zip=#{zip}"
    end

    def unwanted_attributes
      ['state_name']
    end
  end
end

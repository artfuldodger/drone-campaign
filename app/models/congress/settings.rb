module Congress
  class Settings
    def self.base_uri
      'congress.api.sunlightfoundation.com'
    end

    def self.api_key
      ENV['SUNLIGHT_API_KEY']
    end
  end
end

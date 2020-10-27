class WebserviceAPI
    include HTTParty
    require_relative '../hooks/webserviceApi_hook'

    #uri_base "https://swapi.dev/api/films/"


    def initialize(body)
        @options = {:body => body}
        @options2 = {:body => body}

        @options1 = {:headers => headers}
    end



    def getWebservice(body)
        self.class.get("/webserviceApi", @options0)
    end    

    def getWebServiceApi (title)
        self.class.get("/webserviceApi/#{title}", @options)
    end

    def getWebServiceAp2 (planets)
        self.class.get("/webserviceApi/#{planets}", @options)
    end

end

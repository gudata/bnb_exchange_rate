module Bnb
  require 'bnb/rate'

  class Bnb::Rates
    include HTTParty
    include HTTParty::Icebox
    cache :timeout => 12*60*60, :store => 'memory' #, :logger => Logger.new(STDOUT)

    def initialize
      @rates = {}
    end

    def fetch
      response = HTTParty.get('http://www.bnb.bg/Statistics/StExternalSector/StExchangeRates/StERForeignCurrencies/index.htm?download=xml&search=&lang=BG')
      rows = response.parsed_response['ROWSET']['ROW']

      rows.each do |item|
        rate = Bnb::Rate.new.from_bnb(item)
        @rates[rate.code] = rate
      end

      self
    end

    def [] key
      @rates[key]
    end
  end

end

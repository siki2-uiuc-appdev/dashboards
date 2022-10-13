class Symbols
  require 'net/http'
  require 'json'

  def Symbols.list
    url = "https://api.exchangerate.host/symbols"
    raw_data = URI.open(url).read
    parsed_exchange_rate_data = JSON.parse(raw_data)
    symbols = parsed_exchange_rate_data.fetch("symbols")
    return symbols
  end

end

class ApplicationController < ActionController::Base
  
  def homepage
    render({ :template => "dashboard_templates/homepage.html.erb" })
  end

  def exchange_rates
    # require 'net/http'
    # require 'json'
    # url = "https://api.exchangerate.host/symbols"
    # raw_data = URI.open(url).read
    # parsed_exchange_rate_data = JSON.parse(raw_data)
    # @symbols = parsed_exchange_rate_data.fetch("symbols")
    @symbols = Symbols.list
    render({ :template => "dashboard_templates/exchange_rates.html.erb"})
  end

  def convert_to
    @id = params.fetch("X")
    @symbols = Symbols.list

    render({ :template => "dashboard_templates/convert_to_rate.html.erb"})
  end
end

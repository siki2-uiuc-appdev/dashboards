class ApplicationController < ActionController::Base
  
  def homepage
    render({ :template => "dashboard_templates/homepage.html.erb" })
  end

  def exchange_rates
    render({ :template => "dashboard_templates/exchange_rates.html.erb"})
  end
end

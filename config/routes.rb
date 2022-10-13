Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/", { :controller => "application", :action => "homepage" })
  get("/forex", { :controller => "application", :action => "exchange_rates"})
  get("/forex/:X", { :controller => "application", :action => "convert_to"})
  get("forex/:X/:Y", { :controller => "application", :action => "currency_conversion"})


end

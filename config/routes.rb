Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })


  get("/square/:id",  { :controller => "calculations", :action => "square" })

  get("/square_root/:id",   { :controller => "calculations", :action => "sqrt" })


  get("/payment/:INTEREST_RATE/:NUMBER_OF_PAYMENTS/:PRINCIPAL_VALUE", { :controller => "calculations", :action => "pmt" })

end

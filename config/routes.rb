Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })


get("/square/:square_input", { :controller => "calculations", :action => "square" })

get("/square_root/:root_input", { :controller => "calculations", :action => "square_root" })

get("/random/:min/:max", { :controller => "calculations", :action => "random" })

end

Rails.application.routes.draw do
  
  get("/flexible/square/:a_number", { :controller => "calculations", :action => "flex_square" })
  
  get("/flexible/square_root/:a_number", { :controller => "calculations", :action => "flexible_square_root" })
  
  get("/flexible/payment/:a_number/:a_number2/:a_number3", { :controller => "calculations", :action => "flexible_payment" })
  
  get("/flexible/random/:a_number/:a_number2", { :controller => "calculations", :action => "flexible_random" })
  
  get("/square_new", { :controller => "calculations", :action => "square_new" })
  
  get("/square/root/form/:a_number", { :controller => "calculations", :action => "square_root_form" })
  
  get("/payment_form/:a_number", { :controller => "calculations", :action => "payment_form" })
  
  get("/random/form/:a_number", { :controller => "calculations", :action => "random_form" })
  
  get("/word/count/form/:a_number", { :controller => "calculations", :action => "word_count_form" })
    
  get("/stats/form/:a_number", { :controller => "calculations", :action => "stats_form" })
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end


Rails.application.routes.draw do

  #Users routes
 
  get("/users", {:controller=> "users",:action=> "index" })

end

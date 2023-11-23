Rails.application.routes.draw do

  #Users routes
 
  get("/users", {:controller=> "users",:action=> "index" })

  get("/users/:path_username", {:controller=> "users",:action=> "show" })

end

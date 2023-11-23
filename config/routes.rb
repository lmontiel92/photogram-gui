Rails.application.routes.draw do

  #Users routes
 
  get("/", {:controller=> "users",:action=> "index" })
  
  get("/users", {:controller=> "users",:action=> "index" })

  get("/users/:path_username", {:controller=> "users",:action=> "show" })

  #Photos routes

  get("/photos", {:controller=> "photos",:action=> "index" })

  get("/photos/:path_id", {:controller=> "photos",:action=> "show" })

end

Rails.application.routes.draw do

  #Users routes
 
  get("/", {:controller=> "users",:action=> "index" })
  
  get("/users", {:controller=> "users",:action=> "index" })

  get("/users/:path_username", {:controller=> "users",:action=> "show" })

  #Photos routes

  get("/photos", {:controller=> "photos",:action=> "index" })

  get("/photos/:path_id", {:controller=> "photos",:action=> "show" })

  post("/update_photo/:path_id", {:controller=> "photos",:action=> "update" })

  get("/delete_photo/:path_id", {:controller=> "photos",:action=> "delete" })

  #Comments routes

  post("/add_comment", {:controller=> "comments",:action=> "add" })
end

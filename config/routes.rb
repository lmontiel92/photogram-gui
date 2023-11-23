Rails.application.routes.draw do

  #Users routes
 
  get("/", {:controller=> "users",:action=> "index" })
  
  get("/users", {:controller=> "users",:action=> "index" })

  get("/users/:path_username", {:controller=> "users",:action=> "show" })

  post("/add_user", {:controller=> "users",:action=> "insert" })

  post("/update_user/:path_username", {:controller=> "users",:action=> "update" })

  #Photos routes

  get("/photos", {:controller=> "photos",:action=> "index" })

  get("/photos/:path_id", {:controller=> "photos",:action=> "show" })

  post("/update_photo/:path_id", {:controller=> "photos",:action=> "update" })

  get("/delete_photo/:path_id", {:controller=> "photos",:action=> "delete" })

  post("/insert_photo_record", {:controller=> "photos",:action=> "insert" })

  #Comments routes

  post("/add_comment", {:controller=> "comments",:action=> "add" })
  
end

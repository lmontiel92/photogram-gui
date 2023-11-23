class PhotosController < ApplicationController

  def index
    
    @list_of_photos = Photo.all.order({:created_at => :desc})

    render({:template => "photo_templates/index"})

  end

  def show

    photo_id = params.fetch("path_id")
  
    @the_photo = Photo.where({:id => photo_id}).at(0)
  
    render({:template => "photo_templates/show"})    
  
    end

    def delete

      photo_id = params.fetch("path_id")
    
      the_photo = Photo.where({:id => photo_id}).at(0)
    
      the_photo.destroy 

      redirect_to("/photos")
    
    end

    def update

      input_image = params.fetch("input_image")
      input_caption = params.fetch("input_caption")
      input_photo_id = params.fetch("path_id")

      the_photo = Photo.where({:id => input_photo_id}).at(0)

      the_photo.image = input_image
      the_photo.caption = input_caption

      the_photo.save   

      redirect_to("/photos/"+ the_photo.id.to_s)
    
    end

    def insert

      input_image = params.fetch("input_image")
      input_caption = params.fetch("input_caption")
      input_owner_id = params.fetch("input_owner_id")

      new_photo = Photo.new

      new_photo.image = input_image
      new_photo.caption = input_caption
      new_photo.owner_id = input_owner_id

      new_photo.save   

      redirect_to("/photos/"+ new_photo.id.to_s)
    
    end

end

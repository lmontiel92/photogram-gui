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

end

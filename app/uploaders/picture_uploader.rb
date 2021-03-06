class PictureUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process :convert => 'png'
  process :tags => ['post_picture']
  
  version :standard do
    process :resize_to_fill => [500, 500, :north]
  end
  
  version :thumbnail do
    process :resize_to_fit => [50, 50]
  end

  def public_id
    return model.name
  end  
end
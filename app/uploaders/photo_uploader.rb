class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  # process eager: true  # Force version generation at upload time.

  # process convert: 'jpg'

  version :thumnail do
    resize_to_fit 256, 256
  end

  version :bright_face do
    cloudinary_transformation effect: "brightness:10", radius: 100,
      width: 100, height: 100, crop: :thumb, gravity: :face
  end

end

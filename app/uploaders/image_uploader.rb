# encoding: utf-8
class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include CarrierWaveDirect::Uploader

  process resize_to_fill: [200, 200]

  version :tiny do
    process resize_to_fill: [20, 20]
  end

  version :small do
    process resize_to_fill: [30, 30]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end

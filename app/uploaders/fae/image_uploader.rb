# encoding: utf-8
module Fae
    class ImageUploader < CarrierWave::Uploader::Base
      storage :aws
      
      include CarrierWave::MiniMagick
  
      # saves file size to DB
      process :save_file_size_in_model
      def save_file_size_in_model
        model.file_size = file.size
      end
  
      def extension_whitelist
        %w(jpg jpeg gif png ico)
      end
  
      # Override the directory where uploaded files will be stored.
      # This is a sensible default for uploaders that are meant to be mounted:
      def store_dir
        "system/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
      end
  
      version :thumb do
        process :resize_to_fill => [150,100]
      end

      version :home do
        process :resize_to_fill => [250,167]
      end

      version :artefact do
        process :resize_to_fill => [600,400]
      end
  
    end
  end
  
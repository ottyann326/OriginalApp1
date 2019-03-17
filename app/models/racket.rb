class Racket < ApplicationRecord
  # has_one_attached :image

  mount_uploader :image, ImageUploader

  attr_accessor :search_name, :search_price, :search_kind, :search_image

  def search
    Racket.ransack(name_cont: @search_name, kind_cont: @search_kind).result
  end
end

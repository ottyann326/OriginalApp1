class Racket < ApplicationRecord
  # has_one_attached :image
  belongs_to :user

  mount_uploader :image, ImageUploader

  attr_accessor :search_name, :search_price, :search_kind, :search_image

  validates :name, :kind, presence: :true, length: { maximum: 20 }
  validates :price, numericality: { only_integer: true }

  def search
    Racket.ransack(name_cont: @search_name, kind_cont: @search_kind).result
  end
end

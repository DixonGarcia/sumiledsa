class Product < ApplicationRecord
  attr_accessor :images_raw
  before_create :set_images

  def images_raw
    self.images.join("\n") unless self.images.nil?
  end

  def images_raw=(values)
    self.images = []
    self.images=values.split("\n")
  end

  def set_images
    self.images=self.images_raw.split("\n") if self.images_raw
  end
end

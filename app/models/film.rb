class Film < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  def self.search(keyword)
    where('name like ?',"%#{keyword}%")
  end

end

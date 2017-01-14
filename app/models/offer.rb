class Offer < ApplicationRecord
  mount_uploader :image, ImageUploader

  def self.search(keyword)
    Offer.where('name like ?', "%#{keyword}%")
  end
  def self.search3(keyword)
    Offer.where('prix like ?', "%#{keyword}%")
  end
  def self.search2(keyword)
    Offer.where('detail like ?', "%#{keyword}%")
  end
end

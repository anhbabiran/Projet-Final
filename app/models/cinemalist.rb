class Cinemalist < ApplicationRecord
  mount_uploader :images, ImageUploader
  validates :name, presence: true
  validates :image, presence: true
  validates :images, presence: true
  validates :address, presence: true
  validates :web, presence: true
  validates :phone, presence: true

  def self.search(keyword)
    where('name like ?', "%#{keyword}")
  end

  def self.recents
    order(created_at: :desc)
  end

  def self.name_order
    order(:name)
  end
  def self.ordering(mode)
    if mode == "0"
       name_order
    else
      recents
    end
  end
end

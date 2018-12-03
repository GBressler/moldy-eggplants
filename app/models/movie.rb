class Movie < ApplicationRecord
  searchkick
  belongs_to :user
  has_one_attached :image
  has_many :reviews

  #def poster
    #return self.image.variant(resize: '400x600').processed
  #end
end

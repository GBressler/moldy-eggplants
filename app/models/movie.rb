class Movie < ApplicationRecord
  searchkick word_middle: [:title]
  belongs_to :user
  has_one_attached :image
  has_many :reviews

  #def poster
    #return self.image.variant(resize: '400x600').processed
  #end

  def search_data
    {
      title: title
    }
  end
  
end

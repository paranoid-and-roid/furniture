class Product < ActiveRecord::Base
  attr_accessible :designer, :image_url, :item, :price, :specifications, :wood_used

  belongs_to :user
  has_many :line_items

#This style of coding prevents SQL injection.
  def self.search(search_query)
    if search_query
      find(:all,:conditions => ['designer LIKE ?', "%#{search_query}%"])
    else
      find(:all)
    end
  end

end

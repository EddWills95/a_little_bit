class BookQuote < ActiveRecord::Base

  belongs_to :book
  has_many :quotes

end

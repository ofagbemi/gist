class Article < ActiveRecord::Base
  has_many :sections
  has_many :images
end

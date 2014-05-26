class Article < ActiveRecord::Base
  has_many :sections
  has_many :images
  has_and_belongs_to_many :test_session
end

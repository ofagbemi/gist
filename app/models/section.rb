class Section < ActiveRecord::Base
  belongs_to :article
  has_many :images
  has_many :clicks
end

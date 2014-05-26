class TestSession < ActiveRecord::Base
  has_many :clicks
  has_and_belongs_to_many :articles
end

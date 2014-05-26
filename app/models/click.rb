class Click < ActiveRecord::Base
  belongs_to :section
  belongs_to :test_session
end

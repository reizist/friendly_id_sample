class User < ActiveRecord::Base
  include FriendlyId
  friendly_id :name
end

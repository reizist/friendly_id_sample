class User < ActiveRecord::Base
  include FriendlyId
  friendly_id :name, use: :slugged

  private

  def should_generate_new_friendly_id?
    name_changed? || super
  end
end

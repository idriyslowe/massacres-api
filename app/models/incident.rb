class Incident < ActiveRecord::Base
  validates :murderer_first_name, presence: true
  validates :murderer_last_name, presence: true
end

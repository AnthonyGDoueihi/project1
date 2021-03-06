# == Schema Information
#
# Table name: tags
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ApplicationRecord
  belongs_to :user, :optional => true
  has_and_belongs_to_many :glossaries

  # TODO This doesnt work the way I though needs to work on
  validates_uniqueness_of :name, scope: :user_id
end

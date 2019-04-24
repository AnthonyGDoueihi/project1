# == Schema Information
#
# Table name: nodes
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ancestry   :string
#

class Node < ApplicationRecord
  belongs_to :user, :optional => true
  has_and_belongs_to_many :glossaries
  has_ancestry
end

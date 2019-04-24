# == Schema Information
#
# Table name: glossaries
#
#  id         :bigint(8)        not null, primary key
#  title      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  urlname    :text
#  user_id    :integer
#  node_id    :integer
#

class Glossary < ApplicationRecord
  has_and_belongs_to_many :tags, :optional => true
  has_and_belongs_to_many :nodes
  belongs_to :user, :optional => true

  has_many :text_blocks
  has_many :image_blocks

  validates_uniqueness_of :title, scope: :user_id
end

# == Schema Information
#
# Table name: glossaries
#
#  id         :bigint(8)        not null, primary key
#  title      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Glossary < ApplicationRecord
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :nodes

  has_many :text_blocks
  has_many :image_blocks
end

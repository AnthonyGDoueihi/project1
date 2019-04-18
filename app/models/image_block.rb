# == Schema Information
#
# Table name: image_blocks
#
#  id          :bigint(8)        not null, primary key
#  image       :text
#  subhead     :text
#  glossary_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ImageBlock < ApplicationRecord
  belongs_to :glossary
end

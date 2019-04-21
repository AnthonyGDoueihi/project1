# == Schema Information
#
# Table name: text_blocks
#
#  id          :bigint(8)        not null, primary key
#  header      :text
#  info        :text
#  glossary_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TextBlock < ApplicationRecord
  belongs_to :glossary, :optional => true
end

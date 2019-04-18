# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :text
#  password_digest :text
#  email           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_many :tags
  has_many :nodes
end

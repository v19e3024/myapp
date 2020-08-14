# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  signin_name     :string
#  display_name    :string
#  password_digest :string
#  status          :string           default("available")
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    validates :signin_name, presence: true, uniqueness: true, length: { in: 4..12}
    validates :display_name, presence: true
    validates :status, inclusion: { in: %w[available suspended]}
    has_secure_password
end

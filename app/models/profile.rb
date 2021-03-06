class Profile < ApplicationRecord
  belongs_to :user, optional: true
  validates :family_name,
            :first_name,
            :family_name_kana,
            :first_name_kana,
            :birth_year,
            :birth_month,
            :birth_day,
             presence: true
end

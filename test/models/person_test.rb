# == Schema Information
#
# Table name: people
#
#  id                 :integer          not null, primary key
#  person_first_name  :string
#  person_middle_name :string
#  person_last_name   :string
#  person_role        :text
#  person_number      :integer          not null
#  person_email       :string
#  person_telephone   :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  site_number        :integer
#
require "test_helper"

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

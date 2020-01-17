# == Schema Information
#
# Table name: rewards
#
#  id                 :bigint           not null, primary key
#  project_id         :integer          not null
#  quantity           :integer
#  minimum            :integer          not null
#  title              :string           not null
#  description        :string           not null
#  estimated_delivery :date
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class RewardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

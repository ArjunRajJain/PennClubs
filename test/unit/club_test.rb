require 'test_helper'

class ClubTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
     club = Club.new
     assert !club.save
   end
end

require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @u = users(:kristina)
  end

  def test_requires_name
    @u.name = nil
    assert !@u.save
  end

  def test_requires_semester
    @u.semester = nil
    assert !@u.save
  end

  def teardown
    @u = nil
  end
end

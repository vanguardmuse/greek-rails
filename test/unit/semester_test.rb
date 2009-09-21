require 'test_helper'

class SemesterTest < ActiveSupport::TestCase

  def setup
    @s = Semester.new do |s|
      s.name = "Kristina"
    end
    @s.save
  end
  # Replace this with your real tests.
  def test_requires_name
    @s.name = nil
    assert !@s.save
  end

  def teardown
    @s.destroy
  end
end

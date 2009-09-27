require 'test_helper'

class SemesterTest < ActiveSupport::TestCase

  def test_requires_name
    s = semesters(:fall)
    s.name = nil
    assert !s.save
  end
end

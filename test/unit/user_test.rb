require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @s = Semester.new do |s|
      s.name="Fall 2009"
    end
    @s.save
    @u = User.new do |u|
      u.name="Kristina"
      u.password="Kristina"
      u.semester=@s
    end
    @u.save
  end
  # Replace this with your real tests.
  def test_requires_name
    @u.name = nil
    assert !@u.save
  end

  def test_requires_semester
    @u.semester = nil
    assert !@u.save
  end

  def teardown
    @u.destroy
    @s.destroy
  end
end

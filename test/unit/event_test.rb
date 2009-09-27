require 'test_helper'

class EventTest < ActiveSupport::TestCase

  def setup
    @e = events(:rush)
  end

  def test_date_required
    @e.date = nil
    assert !@e.save
  end

  def test_location_required
    @e.location = nil
    assert !@e.save
  end

  def test_title_required
    @e.title = nil
    assert !@e.save
  end

  def test_summary_required
    @e.summary = nil
    assert !@e.save
  end

  def test_description_required
    @e.description = nil
    assert !@e.save
  end

  def test_user_required
    @e.user = nil
    assert !@e.save
  end

  def test_events_have_a_contact_that_is_a_user
    assert @e.contact.class == User
  end

  def teardown
    @e = nil
  end
end

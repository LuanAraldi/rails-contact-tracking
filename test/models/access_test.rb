require 'test_helper'

class AccessTest < ActiveSupport::TestCase
  test "valid contact access" do
    contact = Contact.create()
    assert contact.save, "Saved contact"

    access = Access.create(:contact_id => contact.id)
    assert access.save, "Not saved access of contact"
  end

  test "shouldn't save an access not related to a contact" do
    access = Access.create()
    assert_not access.save, "Saved access without contact"
  end
end

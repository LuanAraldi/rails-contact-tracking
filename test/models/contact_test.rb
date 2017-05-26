require 'test_helper'

class ContactTest < ActiveSupport::TestCase

  test "shouldn't save contact with incorrect email format" do
    contact = Contact.new(email: "teste#teste.com")
    assert_not contact.save, "Incorrect email format given"

    contact = Contact.new(email: "testeteste.com")
    assert_not contact.save, "Incorrect email format given"

    contact = Contact.new(email: "teste@teste.com.br")
    assert contact.save, "Correct email format given"
  end

end

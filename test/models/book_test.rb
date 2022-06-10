require "test_helper"

class BookTest < ActiveSupport::TestCase
    test 'valid book' do
    
    book = books(:el_principito)
    
    book.user = User.create!(email:'user1@gmail.com', password: 123456)
    assert book.valid?
    
  end
end



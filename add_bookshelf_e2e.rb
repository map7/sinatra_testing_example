require_relative 'test_helper'
require_relative 'bookshelf.rb'

class AddBookshelf < Test::Unit::TestCase
  include Capybara::DSL
  include TestHelper

  def test_adding_bookshelf
    visit "/"
    assert page.has_content?("Bookshelf")
  end
end  

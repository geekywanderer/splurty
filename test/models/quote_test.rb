require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

  test "unique_tag" do
    quote = Quote.create(:author => 'Say-Ho Tan', :saying => 'You only YOLO once.')
    expected = 'ST#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end


end

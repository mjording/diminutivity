require "minitest_helper"

class TestDiminutivity < MiniTest::Unit::TestCase
  def test_sanity
    assert Diminutivity::VERSION
  end

  def test_match
    matchr = Diminutivity::Matcher.new('test/fixtures/namefile.csv')
    assert matchr.match('matt', 'matthew')
  end
end

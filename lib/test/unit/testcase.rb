require 'minitest/unit'
require 'test/unit/deprecate'

module Test; end
module Test::Unit # was ::Mini::Test, but rails' horrid code forced my hand
  if defined? TestCase then
    warn "ARGH! someone defined Test::Unit::TestCase rather than requiring"
    remove_const :TestCase
  end

  ## This is causing a conflict with rspec-rails when we introduce prototype-rails
  ## It seems to be the case that this is no longer required, as our tests (so far) seem to be running fine.
  # if respond_to? :silence_warnings
  #   silence_warnings { AssertionFailedError = ::MiniTest::Assertion }
  # else
  #   AssertionFailedError = ::MiniTest::Assertion
  # end

  class TestCase < ::MiniTest::Unit::TestCase

    VERSION = '1.3.2'

    tu_deprecate :method_name, :name # 2009-06-01

    def self.test_order              # 2009-06-01
      :sorted
    end
  end
end

require 'test/unit/assertions' # brings in deprecated methods

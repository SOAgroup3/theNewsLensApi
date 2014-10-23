require 'minitest/spec'
require 'minitest/autorun'
require './newsdigests.rb'

describe 'the_newslens_test' do
  before do
    @newsfound = Scarper::NewsLens.gets_news
  end
end

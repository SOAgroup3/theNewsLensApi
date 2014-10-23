require 'minitest/spec'
require 'minitest/autorun'
require './newsdigests.rb'

describe 'the_newslens_test' do
  before do
    @newsfound = Scarper::NewsLens.gets_news
  end

  it 'they are not nil' do
    @newsfound.each do |x|
      x['title'].wont_be_nil
      x['author'].wont_be_nil
      x['date'].wont_be_nil
    end
  end

  it 'it is a date string' do
    @newsfound.each do |x|
      x['date'].must_be_instance_of Date
    end
  end

  it 'it is close to 2013' do
    @newsfound.each do |x|
      x['date'].year.must_be_close_to 2013, 2
    end
  end

end

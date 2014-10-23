$:.push File.expand_path("../lib", __FILE__)
require 'Scraper/version'

Gem::Specification.new do |s|
  s.name        =  'scraper'
  s.version     =  Scraper::VERSION
  s.executables << 'scraper'
  s.date        =  '2014-10-23'
  s.summary     =  'Grab the news information from theNewsLens'
  s.description =  'Automatically give you the titles of latest news.'
  s.authors     =  ['Anita Lin', 'Peggy Chao', 'Ethan Chen']
  s.email       =  'gatheringbc@gmail.com'
  s.files       =  `git ls-files`.split("\n")
  s.test_files  =  `git ls-files -- {test,spec,features}/*`.split("\n")
  s.homepage    =  'https://github.com/SOAgroup3/theNewsLensApi'
  s.license     =  'MIT'

  s.add_development_dependency 'minitest'
  s.add_development_dependency 'minitest-rg'
  s.add_runtime_dependency 'nokogiri', '>= 1.6.2'   # v.1.6.2 has documented problems
end
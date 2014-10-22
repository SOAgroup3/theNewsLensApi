require 'nokogiri'
require 'open-uri'
require 'yaml'
require 'date'
module Scarper
  # class for NewsLens
  class NewsLens
    LINK = 'http://www.thenewslens.com'
    NEWS_XPATH = "//main[@class='HolyGrail-content']
                  //div[@class='post-list-item']"

    def self.gets_news
      doc = gets_html(LINK)
      content = gets_content(doc)
      news = gets_titles(content)
      to_yaml(news)
    end
    def self.gets_html(url)
      Nokogiri::HTML(open(url))
    end
    def self.gets_content(doc)
      doc.xpath(NEWS_XPATH)
    end
    def self.gets_titles(news)
      news.map(&:text)
    end
    def self.to_yaml(item)
      my_hash = {}
      col_name = ["title","author","date"]
      item.map do |x|
        x.strip!
        x.gsub!(/\n+/,"\n")
        values = x.split("\n")
        values[2] = Date.parse(values[2])
        my_hash = Hash[col_name.zip values]
        #my_hash.to_yaml
      end      
    end
  end
end

class TechCliApp::Scraper

    def scrape_articles
    @doc = Nokogiri::HTML(open('https://www.marketwatch.com/newsviewer'))
    @doc.search("li.expandable").each do |article_li|
      the_news = TechCliApp::News.new

      a_tag = article_li.search("h4 a")
      if a_tag
        the_news.url = a_tag.attr("href").text
    #  end

      the_news.title = article_li.search("div.nv-text-cont h4").text
      the_news.time = article_li.search("span.nv-time").text
      the_news.summary = article_li.search("p.abs").text

      the_news.save
    end
  end
end

end

class TechCliApp::News
  attr_accessor :stories, :summary, :time

  def self.today
    puts <<-DOC.gsub /^\s*/, ''
    puts "The Most Recent Tech News is:"
    1. Italy's Open Fiber enlists banks for $8 billion broadband rollout!
    2. Russia to ban Telegram messenger over encryption dispute!
      DOC

      news_1 = self.new
      news_1.stories = "Italy's Open Fiber enlists banks for $8 billion broadband rollout"
      news_1.summary = "Italy's Open Fiber has enlisted banks to help fund the 6.5 billion euro ($8 billion) rollout of its fast broadband network, it said on Friday,
                        confirming an earlier Reuters report."
      news_1.time = "11:32am EDT"

      news_2 = self.new
      news_2.stories = "Russia to ban Telegram messenger over encryption dispute"
      news_2.summary = "A Russian court on Friday ordered that access to the Telegram messenger service be blocked in Russia, heralding possible communication disruption
                        for millions of users in the latest clash between global technology firms and Russian authorities."
      news_2.time = "11:04am EDT"

        [news_1, news_2]
  end

end

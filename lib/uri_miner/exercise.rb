# frozen_string_literal: true

class UriMiner
  def self.exercise(id)
    url = "https://www.urionlinejudge.com.br/judge/en/problems/view/#{id}"

    page = @agent.get(url)
    iframe = @agent.click page.iframes.first

    {
      name: iframe.search(".header h1").text,
      content: iframe.search(".problem").to_html,
      category: page.search("#page-name-c ul li")[0].text[2..-1].strip,
      level: page.search("#page-name-c ul li")[2].text[2..-1].strip[6..-1],
      limit_time: page.search("#page-name-c ul li")[6].text[2..-1].strip[17..-1].split[0],
      limit_mem: page.search("#page-name-c ul li")[8].text[2..-1].strip[14..-1].split[0]
    }
  end
end

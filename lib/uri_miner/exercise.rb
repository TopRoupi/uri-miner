# frozen_string_literal: true

class UriMiner
  def self.exercise(id)
    url = "https://www.urionlinejudge.com.br/repository/UOJ_#{id}.html"
    @agent.get(url)
  end
end

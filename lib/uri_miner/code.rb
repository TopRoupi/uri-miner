# frozen_string_literal: true

class UriMiner
  def self.submit(code: "", id: 1001, lang: 5)
    @agent.get("https://www.urionlinejudge.com.br/judge/pt/runs/add")

    form = @agent.page.forms.first
    form.field_with(name: "language_id").value = lang
    form.field_with(name: "problem_id").value = id
    form.field_with(name: "source_code").value = code

    form.submit
    form.buttons.first

    result
  end

  # this is shit
  def self.result
    result = "- In queue -"

    while result.include?("- In queue -")
      sleep(1)

      @agent.get("https://www.urionlinejudge.com.br/judge/pt/runs/live")

      page = @agent.page

      rows = page.css("div#element table tr")

      rows.each do |row|
        name = row.css("td.wide a").text
        result = row.css("td.semi-wide.answer.aw").text

        break if name == @name
      end
      break
    end

    result.squeeze(" ")
  end

  private_class_method :result
end

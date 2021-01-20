# frozen_string_literal: true

class UriMiner
  @agent = Mechanize.new

  def self.config(email: "", password: "", name: "")
    @name = name
    @email = email
    @password = password
  end

  def self.login(email: @email, password: @password)
    @agent.get("https://www.urionlinejudge.com.br/judge/pt/login")

    form = @agent.page.forms.first
    form.field_with(name: "email").value = email
    form.field_with(name: "password").value = password

    form.submit
    form.buttons.first
  end
end

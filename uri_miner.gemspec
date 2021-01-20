# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "uri_miner"
  s.version = "0.0.2"
  s.date = "2020-01-20"
  s.summary = "Uri-online-judge exercises miner"
  s.description = "Gem to submmit codes for Uri-online-judge"
  s.authors = ["Breno Nunes"]
  s.email = "breno.nunesgalvao@protonmail.ch"
  s.files = ["lib/uri_miner.rb",
    "lib/uri_miner/code.rb",
    "lib/uri_miner/exercise.rb",
    "lib/uri_miner/login.rb"]
  s.add_runtime_dependency "mechanize", ">= 2.7.6"
  s.homepage = ""
  s.license = "MIT"
end

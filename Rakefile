# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'
require 'jeweler'

Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "bnb_exchange_rate"
  gem.homepage = "https://github.com/gudata/bnb_exchange_rate"
  gem.license = "MIT"
  gem.summary = %Q{Get the fixings from Bulgarian National Bank (BNB)}
  gem.description = %Q{Fetch the exchange rates from the BNB. Use cache. Simple fast. The url from where the rates are taken is http://www.bnb.bg/Statistics/StExternalSector/StExchangeRates/StERForeignCurrencies/index.htm}
  gem.email = "i.bardarov@gmail.com"
  gem.authors = ["Gudata"]

  gem.require_paths = ["lib"]

  gem.add_dependency 'httparty'
  gem.add_dependency 'httparty-icebox'
end

Jeweler::RubygemsDotOrgTasks.new

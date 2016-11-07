require "json"
require "drugs/version"

module Drugs
  DRUGS = JSON.parse(File.read(File.expand_path("../../data/drugs.json", __FILE__))).freeze

  def drugs
    DRUGS
  end

  extend self
end

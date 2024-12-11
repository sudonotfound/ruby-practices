#!/usr/bin/env ruby
require 'optparse'



dir = ARGV[0] || '.'

#entries = Dir.entries(dir).reject { |f| f.start_with?('.') unless options[:all] }
entries = Dir.entries(dir).reject { |f| f.start_with?('.')}

puts entries.join("\t")


#!/usr/bin/env ruby
require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.on('-l', 'Use a long listing format') { options[:long] = true }
  opts.on('-a', 'Do not ignore entries starting with .') { options[:all] = true }
end.parse!

dir = ARGV[0] || '.'

entries = Dir.entries(dir).reject { |f| f.start_with?('.') unless options[:all] }

if options[:long]
  entries.each do |entry|
    stat = File.stat(File.join(dir, entry))
    mode = stat.mode.to_s(8)[-4..-1]
    puts "#{mode} #{stat.size.to_s.rjust(8)} #{entry}"
  end
else
  puts entries.join("\t")
end

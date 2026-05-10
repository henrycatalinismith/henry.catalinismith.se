#!/usr/bin/env ruby
require './lib/bookmark'
require 'yaml'
require 'httparty'
require 'nokogiri'
require 'fileutils'

Dir.glob("_bookmarks/*.md") do |file_path|
  next unless File.file?(file_path)

  content = File.read(file_path)
  parts = content.split('---', 3)[1..2]
  front_matter = parts[0]
  body = parts[1].strip.chomp

  begin
    metadata = YAML.safe_load(front_matter)
  rescue => e
    puts file_path
    raise e
  end
  if metadata.nil?
    puts "No metadata found in #{file_path}"
  end
  url = metadata.dig('bookmark', 'url')

  if metadata.dig('bookmark', 'title')
    # puts "Skipping #{file_path}"
    # next
  end
  puts parts.inspect
  puts metadata.inspect

  begin
    metadata = fetch_metadata(url)
    frontmatter = create_frontmatter(metadata)

    new_content = "#{frontmatter.to_yaml}---\n\n#{body}".strip.chomp
    File.write(file_path, new_content)

    puts "Updated metadata for #{file_path}"
  rescue StandardError => e
    puts "Failed to process #{file_path}: #{e.message}"
  end
end

#!/usr/bin/env ruby
require 'yaml'
require 'httparty'
require 'nokogiri'
require 'fileutils'

Dir.glob("bookmarks/*") do |file_path|
  next unless File.file?(file_path)

  content = File.read(file_path)
  front_matter, body = content.split('---', 3)[1..2]

  metadata = YAML.safe_load(front_matter)
  url = metadata['external_url']

  begin
    response = HTTParty.get(url)
    html = Nokogiri::HTML(response.body)

    meta_tags = {
      'author' => html.at('meta[name="author"]')&.[]('content'),
      'og:title' => html.at('meta[property="og:title"]')&.[]('content')
    }

    metadata['bookmark'] ||= {}
    metadata['bookmark']['url'] = url
    metadata['bookmark']['meta'] = meta_tags

    new_content = "---\n#{metadata.to_yaml}---\n#{body}"
    File.write(file_path, new_content)

    puts "Updated metadata for #{file_path}"
  rescue StandardError => e
    puts "Failed to process #{file_path}: #{e.message}"
  end
end

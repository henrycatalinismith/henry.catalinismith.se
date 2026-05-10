def fetch_metadata(url)
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri)
  unless response.is_a?(Net::HTTPSuccess)
    abort "Failed to fetch URL: #{response.code} #{response.message}"
  end
  html = Nokogiri::HTML(response.body)
  return {
    "title" => html.at("title")&.text,
    "lang" => html.at("html")&.[]("lang"),
    "description" => html.at('meta[property="og:description"]')&.[]("content"),
    "url" => url,
  }
end

def create_frontmatter(metadata)
  bookmark = {}
  bookmark["title"] = metadata["title"] if metadata["title"]
  bookmark["lang"] = metadata["lang"] if metadata["lang"]
  bookmark["author"] = metadata["author"] if metadata["author"]
  bookmark["description"] = metadata["description"] if metadata["description"]
  bookmark["url"] = metadata["url"] if metadata["url"]
  return {
    "title" => metadata["title"],
    "layout" => "layout-post",
    "tags" => ["bookmarks"],
    "bookmark" => bookmark,
  }
end

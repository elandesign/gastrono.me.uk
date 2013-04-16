xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  xml.title "gastrono.me.uk"
  xml.subtitle "Cooking & Eating"
  xml.id "http://gastrono.me.uk/"
  xml.link "href" => "http://gastrono.me.uk/"
  xml.link "href" => "http://gastrono.me.uk/feed.xml", "rel" => "self"
  xml.updated blog.articles.first.date.to_time.iso8601
  xml.author { xml.name "Paul Smith" }

  blog.articles[0..10].each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => article.url
      xml.id article.url
      xml.published article.date.to_time.iso8601
      xml.updated article.date.to_time.iso8601
      xml.author { xml.name "Paul Smith" }
      xml.summary article.summary, "type" => "html"
    end
  end
end

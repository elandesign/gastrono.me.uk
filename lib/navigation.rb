def navigation(text, url, match)
  if match =~ @item.path
    "<li class=\"active\"><a href=\"#{url}\">#{text}</a></li>"
  else
    "<li><a href=\"#{url}\">#{text}</a></li>"
  end
end

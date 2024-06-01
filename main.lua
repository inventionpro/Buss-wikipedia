get('search').on_submit(function(content)
  local res = fetch({
    url = "https://api.wikimedia.org/core/v1/wikipedia/en/page/Earth/html",
    method = "GET",
    headers = { ["Content-Type"] = "text/plain" },
    body = 'Text'
  })
  get('content').set_content(res)
end)

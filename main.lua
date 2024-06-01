get('search').on_submit(function(content)
  local res = fetch({
    url = "https://api.fsh.plus/wikipedia?page="..content,
    method = "GET",
    headers = { ["Content-Type"] = "text/plain" },
    body = 'Text'
  })
  get('content').set_content(res['data'])
end)

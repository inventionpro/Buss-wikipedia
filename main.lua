print(get('search'))
print(get('title'))
print(get('content'))

get('search').on_submit(function(content)
  get('title').set_content('Loading')
  get('content').set_content('Page content loading...')
  local res = fetch({
    url = "https://api.fsh.plus/wikipedia?page="..content,
    method = "GET",
    headers = { ["Content-Type"] = "text/plain" },
    body = 'Text'
  })
  get('title').set_content(res['title'])
  get('content').set_content(res['data'])
end)

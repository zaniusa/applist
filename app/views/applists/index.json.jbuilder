json.array!(@applists) do |applist|
  json.extract! applist, :applink, :appname, :appdescr
  json.url applist_url(applist, format: :json)
end

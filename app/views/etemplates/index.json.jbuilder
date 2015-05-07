json.array!(@etemplates) do |etemplate|
  json.extract! etemplate, :id
  json.url etemplate_url(etemplate, format: :json)
end

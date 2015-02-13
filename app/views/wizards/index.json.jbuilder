json.array!(@wizards) do |wizard|
  json.extract! wizard, :id, :name, :color, :height, :is_good
  json.url wizard_url(wizard, format: :json)
end

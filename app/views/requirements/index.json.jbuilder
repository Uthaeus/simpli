json.array! @requirement do |req|
  date_format = event.all_day_event? ? '%Y-%m-%d' : '%Y-%m-%dT%H:%M:%S'
  json.id req.id
  json.title req.title
  json.start req.start.strftime(date_format)
  json.end req.end.strftime(date_format)
  json.color req.color unless event.color.blank?
  json.allDay req.all_day_event? ? true : false
  json.update_url req_path(event, method: :patch)
  json.edit_url edit_req_path(req)
end

# json.array! @requirements, partial: 'requirements/requirement', as: :requirement

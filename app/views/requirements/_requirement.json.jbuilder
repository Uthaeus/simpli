date_format = event.all_day_event? ? '%Y-%m-%d' : '%Y-%m-%dT%H:%M:%S'

json.id requirement.id
json.title requirement.title
json.start requirement.start.strftime(date_format)
json.end requirement.end.strftime(date_format)

json.color requirement.color unless requirement.color.blank?
json.allDay requirement.all_day_event? ? true : false

json.update_url requirement_path(event, method: :patch)
json.edit_url edit_requirement_path(requirement)

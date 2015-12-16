json.array! @incidents.each do |incident|
  json.id incident.id
  json.murderer_first_name incident.murderer_first_name
  json.murderer_last_name incident.murderer_last_name
  json.birthdate incident.birthdate
  json.location incident.location
  json.weapon incident.weapon
  json.number_of_victims incident.number_of_victims
  json.sentence incident.sentence
end
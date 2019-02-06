json.group_names contact.group_names


json.id contact.id
json.first_name contact.first_name
json.middle_name contact.middle_name
json.last_name contact.last_name
json.full_name contact.full_name
json.email contact.email
json.phone_number contact.phone_number

json.bio contact.bio
json.current_user current_user


json.formatted do 
  json.updated_at contact.friendly_updated_at
  json.japan_prefix contact.japan_prefix
  # json.address contact.address
end
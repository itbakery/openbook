module ApplicationHelper
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end
  def show_tiny_logo(logo)
    logo.file.blank?  ?  image_tag("blanklogo.png") :  image_tag(logo.url(:tiny_thumb))
  end

  def google_maps_api_key
    "AIzaSyBo4THMXvIvPgynztRu3iJ3HVDZPAVb7Lw"
  end

  def google_api_url
    "http://maps.googleapis.com/maps/api/js?v=3.exp"
  end

  def google_api_access
    "#{google_api_url}&key=#{google_maps_api_key}&sensor=false"
  end

  def google_maps_api
    content_tag(:script,:type => "text/javascript",:src => google_api_access) do
    end
  end
end

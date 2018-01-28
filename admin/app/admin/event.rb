ActiveAdmin.register Event do
  config.sort_order = "name_asc"

  filter :name
  filter :description

  index do
    selectable_column
    column :id
    column :name
    column :description
  end

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :name
      f.input :description
      f.inpu :image_url
    end
    f.inputs do
      f.has_many :performances, heading: "Perforces",
	      allow_destroy: true do |fp|
	      fp.input :start_time
	      fp.input :end_time
    end
    f.actions
  end
end


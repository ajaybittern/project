ActiveAdmin.register Category do
permit_params :list, :of, :attributes, :on, :model, :name, :name
  
  index do
    column :name
    column "Release Date", :released_at
   
   column :name, :sortable => :name do |product|
      div :class => "name" do
        number_to_currency product.name
      end
    end
    default_actions
  end
end


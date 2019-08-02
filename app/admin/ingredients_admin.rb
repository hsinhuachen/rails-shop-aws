Trestle.resource(:ingredients) do
  menu do
    group :recipe do
      item :ingredients, icon: "fa fa-star", label: "食材"
    end
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title, header: "食材"
    column :quantity, header: "數量"
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form dialog: true do |ingredient|
    row do
      col(xs: 6) { text_field :title, label: "食材" }
      col(xs: 6) { text_field :quantity, label: "數量" }
    end

    # select  :recipe_id, Recipe.all, { label: "食譜" }

    text_field :sorting
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:ingredient).permit(:name, ...)
  # end
end

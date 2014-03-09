module ResourcesHelper
  def category_labels(categories)
    categories.map do |category|
      content_tag :span, class: "label label-info" do
        link_to category.name, category_resources_path(category)
      end
    end.join("&nbsp;").html_safe
  end
end

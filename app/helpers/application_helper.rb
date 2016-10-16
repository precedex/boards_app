module ApplicationHelper
  def title(page_title)
    content_for(:title) { page_title }
  end

  def external_link_to(name = nil, options = nil, html_options = nil, &block)
    if block_given?
      options = (options || {}).merge(target: "_blank")
    else
      html_options = (html_options || {}).merge(target: "_blank")
    end
    link_to(name, options, html_options, &block)
  end

  def old_style_error_div(model)
    return unless model.errors.any?

    summary = "#{pluralize(model.errors.count, 'error')} prohibited this #{model.class.name.downcase} from being saved:"
    error_items = model.errors.full_messages.map do |msg|
      content_tag(:li, msg)
    end.join(" ").html_safe

    content_tag(:div,
                content_tag(:h2, summary) + content_tag(:ul, error_items),
                id: "error_explanation")
  end

  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == 'asc' ? 'desc' : 'asc'
    link_to title, {:sort => column, :direction => direction, 
                    :last => params[:last], :hospital => params[:hospital],
                    :employer => params[:employer], :state => params[:state],
                    :provider_type => params[:provider_type]},
                   {:class => css_class} 
  end

  def on_books_path?
    current_page?(:controller => 'resources')
  end

  def on_exams_path?
    current_page?(sites_writtenboards_path) ||
    current_page?(sites_oralboards_path) ||
    current_page?(sites_pedsboards_path) ||
    current_page?(sites_crnaboards_path) ||
    current_page?(sites_echoboards_path) ||
    current_page?(sites_moca_path) ||
    current_page?(informatics_path)
  end

  def on_education_path?
    current_page?(residencies_path) ||
    current_page?(ms_path) ||
    current_page?(calendar_path) ||
    current_page?(lectures_path) ||
    current_page?(regional_path) ||
    current_page?(sites_pediatric_path) ||
    current_page?(sites_cardiac_path) ||
    current_page?(airway_path) ||
    current_page?(sites_icu_path) ||
    current_page?(movies_path) ||
    current_page?(sites_miscellaneous_path)
  end

  def on_societies_path?
    current_page?(sites_societies_us_path) ||
    current_page?(sites_societies_state_path) ||
    current_page?(sites_societies_intl_path) ||
    current_page?(sites_societies_pedi_path) ||
    current_page?(sites_societies_pain_path) ||
    current_page?(sites_societies_quality_path) ||
    current_page?(sites_societies_history_path) ||
    current_page?(sites_societies_crna_path)
  end
  
  def us_states
      [ 
        ['All states', ''],
        ['Alabama', 'AL'],
        ['Alaska', 'AK'],
        ['Arizona', 'AZ'],
        ['Arkansas', 'AR'],
        ['California', 'CA'],
        ['Colorado', 'CO'],
        ['Connecticut', 'CT'],
        ['Delaware', 'DE'],
        ['District of Columbia', 'DC'],
        ['Florida', 'FL'],
        ['Georgia', 'GA'],
        ['Hawaii', 'HI'],
        ['Idaho', 'ID'],
        ['Illinois', 'IL'],
        ['Indiana', 'IN'],
        ['Iowa', 'IA'],
        ['Kansas', 'KS'],
        ['Kentucky', 'KY'],
        ['Louisiana', 'LA'],
        ['Maine', 'ME'],
        ['Maryland', 'MD'],
        ['Massachusetts', 'MA'],
        ['Michigan', 'MI'],
        ['Minnesota', 'MN'],
        ['Mississippi', 'MS'],
        ['Missouri', 'MO'],
        ['Montana', 'MT'],
        ['Nebraska', 'NE'],
        ['Nevada', 'NV'],
        ['New Hampshire', 'NH'],
        ['New Jersey', 'NJ'],
        ['New Mexico', 'NM'],
        ['New York', 'NY'],
        ['North Carolina', 'NC'],
        ['North Dakota', 'ND'],
        ['Ohio', 'OH'],
        ['Oklahoma', 'OK'],
        ['Oregon', 'OR'],
        ['Pennsylvania', 'PA'],
        ['Puerto Rico', 'PR'],
        ['Rhode Island', 'RI'],
        ['South Carolina', 'SC'],
        ['South Dakota', 'SD'],
        ['Tennessee', 'TN'],
        ['Texas', 'TX'],
        ['Utah', 'UT'],
        ['Vermont', 'VT'],
        ['Virginia', 'VA'],
        ['Washington', 'WA'],
        ['West Virginia', 'WV'],
        ['Wisconsin', 'WI'],
        ['Wyoming', 'WY']
      ]
  end
end

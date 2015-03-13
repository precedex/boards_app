module ResidenciesHelper
  
  def sortable_b(column, program = nil)
    program ||= column.titleize
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == 'asc' ? 'desc' : 'asc'
    link_to program, {:sort => column, :direction => direction}, {:class => css_class} 
  end
end

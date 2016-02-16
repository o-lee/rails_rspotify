module ProjectsHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end
  
  def sortable(column, title = nil)
    active = column == sort_column
    ascending = active && sort_direction == 'asc'
    direction_html = ascending ? 'asc' : 'desc' if active
    css_class = active ? "current #{sort_direction}" : nil
    direction = ascending ? "desc" : "asc"
    link_to(title, { :sort => column, :direction => direction }, :remote => true, :class => css_class) << raw(direction_html)
  end
end

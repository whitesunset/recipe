module ItemsHelper
  def join_tags(item)
    item.tags.map{ |t| t.name}.join(", ")
  end
end

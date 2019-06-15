module ProjectsHelper
  def top_tech(arr)
    arr.take(3).join(' | ')
  end
end

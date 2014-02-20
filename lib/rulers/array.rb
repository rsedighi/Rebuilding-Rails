class Array
  def sum(start = 0)
    inject(start, &:+)
  end
  def times(start = 1)
    inject(start, &:*)
  end
end

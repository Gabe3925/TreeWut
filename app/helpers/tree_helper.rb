module TreeHelper


  def current_tree
    @current_tree = trees/params(:id)
  end

end

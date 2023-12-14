module ApplicationHelper
  def yes_or_no(boolean)
    if boolean == true
      "YES"
    else 
      "NO"
    end
  end
end

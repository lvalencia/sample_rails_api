module EstimatesHelper
  def translate_key(key)
    case key
      when :homedetails
        'Home Details'
      when :graphsanddata
        'Graphs and Data'
      when :mapthishome
        'Map this Home'
      when :comparables
        'Comparables'
      when :overview
        'Overview'
      when :for_sale_by_owner
        'For Sale by Owner'
      when :for_sale
        'For Sale'
      else
        'of interest'
    end
  end
end

module ApplicationHelper
  
  # return a title on a per-page basis
  def title
    base_title = "sample app"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    logo = image_tag("logo.png", :alt => "Sample App", :class => 
  	"round")
	end
	
end

module ApplicationHelper
	def cp(path)
  		"active-nav" if current_page?(path)
	end

	def full_title(page_title = '')
    	base_title = "David Bonan"
	    if page_title.empty?
	      base_title
	    else
	      page_title + ' | ' + base_title
	    end
  	end
end

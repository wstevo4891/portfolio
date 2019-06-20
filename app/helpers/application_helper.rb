module ApplicationHelper
	def brand_class
    request.path == '/' ? 'navbar-brand active' : 'navbar-brand'
	end

	def current_class(test_path)
		request.path == test_path ? 'nav-link active' : 'nav-link'
	end
end

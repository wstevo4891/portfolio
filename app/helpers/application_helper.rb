module ApplicationHelper
	class CodeRayify < Redcarpet::Render::HTML
		def block_code(code, language)
			CodeRay.scan(code, language).div
		end
	end

	class CodeRayDark < Redcarpet::Render::HTML
		def block_code(code, language)
			CodeRay.scan(code, language).div(css: :class, line_numbers: :table)
		end
	end

	def markdown(text)
		coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)

		render_markdown(coderayified, text)
	end

	def one_dark(text)
		coderayified = CodeRayDark.new(hard_wrap: true)

		render_markdown(coderayified, text)
	end

	def coderay(code, language)
    CodeRay.scan(code, language).div(css: :class, line_numbers: :table)
	end

	private

	def render_markdown(coderayified, text)
		options = {
			fenced_code_blocks: true,
			no_intra_emphasis: true,
			autolink: true,
			lax_html_blocks: true
		}

		markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
		markdown_to_html.render(text).html_safe
	end

	# def coderay(text)
  #   text.gsub(/\<code( lang="(.+?)")?\>(.+?)\<\/code\>/m) do
  #     CodeRay.scan($3, $2).div(:css => :class)
	# 	end
	# end
end

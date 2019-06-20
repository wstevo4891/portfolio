module ExhibitsHelper
  def coderay(code, language)
    CodeRay.scan(code, language).div(css: :class, line_numbers: :table)
	end
end

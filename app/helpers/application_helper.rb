module ApplicationHelper
	def title(*parts)
		unless parts.empty?
			content_for :title do
				(parts << "Tix_check").join(" - ")
		end
	end
	end
end


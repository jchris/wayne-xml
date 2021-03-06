require 'redcarpet'

class MarkdownRender
	
  def self.render(markdown)
		rend = Redcarpet::Render::HTML
    mdr = Redcarpet::Markdown.new(rend, :fenced_code_blocks => true, :tables => true, :lax_spacing => true)

    html_content = mdr.render(markdown)
    return html_content
  end
  
end
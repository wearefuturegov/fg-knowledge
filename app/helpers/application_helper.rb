module ApplicationHelper
    def markdown(text)
        renderer = ::Redcarpet::Render::HTML.new({
            hard_wrap: true,
            with_toc_data: true
        })
        markdown = ::Redcarpet::Markdown.new(renderer, {
            autolink: true
        })
        markdown.render(text).html_safe
    end


    def toc(text)
        renderer = ::Redcarpet::Render::HTML_TOC.new()
        markdown = ::Redcarpet::Markdown.new(renderer)
        markdown.render(text)
    end
end

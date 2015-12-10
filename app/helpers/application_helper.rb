module ApplicationHelper
  
  def header(text)
    content_for(:header) { text.to_s }
  end
  
  def title(title)
      content_for(:title) { " | #{title}" }
  end
end

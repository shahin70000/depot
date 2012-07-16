module ApplicationHelper

  # This method creates a div which will wrap your block
  # note: the block comming after this method must be followed with <% end %>
  #   to be wraped with div tag.
  # @return [Object]
  # @param [Object] condition
  # @param [Object] attributes
  # @param [Object] block
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"]="display: none"
    end
    content_tag("div",attributes,&block)
  end
end

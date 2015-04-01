def h1 
	puts "<h1>" + yield + "</h1>"
end

h1 { "Breaking News" }

def h2
	puts "<h2>" + yield + "</h2>"
end


def h3
	puts "<h3>" + yield + "</h3>"
end


h2 { "Massive Ruby Discovered" }

def tag(name)
	print "<#{name}>"
  print yield
  print "</#{name}>"
end

tag(:h1) { "Breaking News!" }

tag(:ul) do
  tag(:li) { "It sparkles!"}
  tag(:li) { "It shines!"}
  tag(:li) { "It mesmerizes!"}
end


# This works because blocks are recursive. inside of the ul block are
# more tag blocks. Remember around excutes before and after.

# <ul>
# 	<li>It sparkles!</li>
# 	<li>It shines!</li>
# 	<li>It mesmerizes!</li>
# </ul>


# def content_tag(name, content_or_options_with_block = nil, options = nil, escape = true, &block)
#   if block_given?
#     options = content_or_options_with_block if content_or_options_with_block.is_a?(Hash)
#     content_tag_string(name, capture(&block), options, escape)
#   else
#     content_tag_string(name, content_or_options_with_block, options, escape)
#   end
# end
# content_tag("select", options, multiple: true)
# <select multiple="multiple">...options...</select>

# with block_given? true
# content_tag(:div, "Hello world!", class: ["strong", "highlight"])
# <%= content_tag :div, class: "strong" do -%>
#   Hello world!
# <% end -%>

# documentation http://api.rubyonrails.org/classes/ActionView/Helpers/TagHelper.html#method-i-content_tag



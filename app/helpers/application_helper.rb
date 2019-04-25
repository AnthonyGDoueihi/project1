# module ApplicationHelper
#
#   def openAll root
#     tree = ""
#     tree += openChildNodes root
#
#     if root.descendants.present?
#       root.descendants.each do |child|
#         if child.children? || !child.glossaries.empty?
#           tree += openChildNodes child
#         end
#       end
#     end
#     tree
#   end
#
#   def openChildNodes node
#
#     tree = ""
#     i = 0
#     if node.children?
#       node.children.each do |child|
#         tree += "<p class='child-tree'>#{child.name}"
#
#         if child.children? || !child.glossaries.empty?
#           tree += "<input type='button' class='folder-close' onclick='folderListener(#{ child.id }, #{ child.depth })'></p>"
#         end
#
#         i += 1
#       end
#     end
#
#     unless node.glossaries.empty?
#       node.glossaries.each do |gloss|
#         tree += "<a id='gloss#{gloss.id}' class='child-tree' href='#{node.root.user.urlname}/#{ gloss.urlname }'>#{gloss.title}</a>"
#
#         i += 1
#       end
#     end
#
#     tree += "</div>"
#     tree.prepend(tree = "<div class='parent-container depth#{node.depth}' id='gloss#{ node.id }' style='grid-template-columns: repeat(#{i} , 1fr)'>")
#
#   end
#
#
#
#   def editableChildren node
#     tree = ""
#     if node.children?
#       node.children.each do |child|
#         tree += "<div class='branch' id='node#{ child.id }'><p>#{ child.name }"
#         tree += "<input type='radio' id='radio#{ child.id }' name='id' value='#{ child.id }'>"
#
#         if child.children? || !child.glossaries.empty?
#           tree += "<input class='folder-close' type='button' onclick='folderListener(#{ child.child_ids }, #{ child.glossaries.ids })'></p>#{ editableChildren child }"
#         else
#           tree += "</p>"
#         end
#
#         puts child.glossaries
#
#         unless child.glossaries.empty?
#           child.glossaries.each do |gloss|
#             tree += "<a id='gloss#{ gloss.id }'class='branch' href='/#{child.root.user.urlname}/#{gloss.urlname}'>#{gloss.title}</a>"
#           end
#         end
#         tree += '</div>'
#       end
#     end
#     tree
#   end
#
# end

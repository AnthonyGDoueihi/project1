module ApplicationHelper

  # Left to Right, Up to Down
  # Root div is by default a Down
  # Right div is needed to contain all child Downs so CSS knows what to do with it, maybe
  # Button at the bottom to create Gloss or Folder
  # If Gloss go somewhere else
  # If Folder type name and do this
  # getChildren is too messy needs a clean
  def getChildren node
    tree = ""
    if node.children?
      node.children.each do |child|
        tree += "<div class='branch' id='node#{ child.id }'><p>#{ child.name }"

        if child.children? || !child.glossaries.empty?
          tree += "<input class='folder-close' type='button' onclick='folderListener(#{ child.child_ids }, #{ child.glossaries.ids })'></p>#{ getChildren child }"
        else
          tree += "</p>"
        end

        unless child.glossaries.empty?
          child.glossaries.each do |gloss|
            tree += "<a id='gloss#{ gloss.id }'class='branch' href='/#{child.root.user.urlname}/#{gloss.urlname}'>#{gloss.title}</a>"
          end
        end

        tree += '</div>'
      end
    end
    tree
  end

  def editableChildren node
    tree = ""
    if node.children?
      node.children.each do |child|
        tree += "<div class='branch' id='node#{ child.id }'><p>#{ child.name }"
        tree += "<input type='radio' id='radio#{ child.id }' name='id' value='#{ child.id }'>"

        if child.children? || !child.glossaries.empty?
          tree += "<input class='folder-close' type='button' onclick='folderListener(#{ child.child_ids }, #{ child.glossaries.ids })'></p>#{ editableChildren child }"
        else
          tree += "</p>"
        end

        puts child.glossaries

        unless child.glossaries.empty?
          child.glossaries.each do |gloss|
            tree += "<a id='gloss#{ gloss.id }'class='branch' href='/#{child.root.user.urlname}/#{gloss.urlname}'>#{gloss.title}</a>"
          end
        end
        tree += '</div>'
      end
    end
    tree
  end

  def createHTML

  end

end

#
# <div id="folder-tree">
#   <div class='branch' id='node17'>
#     <p>
#       1lv1
#       <input class='folder-close' type='button' onclick='folderListener([19, 20], [])'>
#     </p>
#     <div class='branch' id='node19'>
#       <p>
#         1lv2
#         <input class='folder-close' type='button' onclick='folderListener([], [6])'>
#       </p>
#       <a id='gloss6'class='branch' href='/zippo/another-page'>
#         Another Page
#       </a>
#     </div>
#     <div class='branch' id='node20'>
#       <p>
#         2lv2
#         <input class='folder-close' type='button' onclick='newGloss()'>
#         <input class='folder-close' type='button' onclick='newDir()'>
#       </p>
#     </div>
#   </div>
#   <div class='branch' id='node18'>
#     <p>
#       2lv1
#       <input class='folder-close' type='button' onclick='folderListener([], [5])'>
#     </p>
#     <a id='gloss5'class='branch' href='/zippo/a-page'>
#       A Page
#     </a>
#   </div>
# </div>

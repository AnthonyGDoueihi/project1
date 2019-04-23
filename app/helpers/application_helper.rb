module ApplicationHelper
  def getChildren node
    tree = ""
    if node.children?
      node.children.each do |child|
        if child.children? || !child.glossaries.empty?
          tree += "<div class='branch' id='node#{ child.id }'><p>#{ child.name }<input class='folder-close' type='button' onclick='folderListener(#{ child.child_ids }, #{ child.glossaries.ids })'></p>#{ getChildren child }"
        else
          tree += "<div class='branch' id='node#{ child.id }'><p>#{ child.name }</p>"
        end
        unless child.glossaries.empty?
          child.glossaries.each do |gloss|
            tree += "<a id='gloss#{ gloss.id }'class='branch' href='/#{child.root.user.urlname}/#{gloss.urlname}'>#{gloss.title}</a>'"
          end
        end
        tree += '</div>'
      end
    end
    tree
  end



end

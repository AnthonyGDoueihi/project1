module ApplicationHelper
  def getChildren nodeId
    node = Node.find nodeId
    tree = ""
    if node.children?
      node.children.each do |child|
        if child.children?
          # tree += "<div class='branch d#{ child.depth }'><p>#{ child.name }<input class='folder-close' onclick='folderListener(#{ child.name}, #{ child.depth }, #{ child.id })' type='button'></p></div>"
          tree += "<div class='branch d#{ child.depth }'><p>#{ child.name }<input class='folder-close' onclick='getChildren(#{ child.id })' type='button'/></p></div>"
        else
          tree += "<div class='branch d#{ child.depth }'><p>#{ child.name }</p></div>"
        end
      end
    end
    tree
  end
end

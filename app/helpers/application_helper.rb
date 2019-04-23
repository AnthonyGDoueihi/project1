module ApplicationHelper
  def getChildren node
    tree = ""
    if node.children?
      node.children.each do |child|
        if child.children?
          tree += "<div class='branch' id='#{ child.id }'><p>#{ child.name }<input class='folder-close' type='button' onclick='folderListener(#{ child.child_ids })'></p>#{ getChildren child }"
        else
          tree += "<div class='branch' id='#{ child.id }'><p>#{ child.name }</p>"
        end
        unless child.glossaries.empty?
          child.glossaries.each do |gloss|
            puts "=-" * 40
            tree += "<a href='/#{child.root.user.username}/#{gloss.url}>#{gloss.title}</a>'"
          end
        end
        puts tree
        tree += '</div>'
      end
    end
    tree
  end
end

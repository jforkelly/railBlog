module ArticlesHelper

def article_params	
	params.require(:article).permit(:title, :body, :tag_list, :attachment , :attachment_cache, :remove_attachment )
end

end

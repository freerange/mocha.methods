def accepted_comments
  Comment.find_all_by_article_id(self.id).select { |comment| comment.accepted? }
end

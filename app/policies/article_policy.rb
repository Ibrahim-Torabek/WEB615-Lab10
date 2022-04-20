class ArticlePolicy < ApplicationPolicy
  class Scope < Scope

    def resolve
      scope.where(publication: user.publications)
    end
  end
end
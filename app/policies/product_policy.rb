class ProductPolicy < ActionPolicy::Base

    def show?
        true
      end
  
    def update?
        user.admin?
    end

    def destroy?
        user.admin?
    end
  end
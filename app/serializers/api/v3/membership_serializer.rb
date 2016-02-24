module Api
  module V3
    class MembershipSerializer < ActiveModel::Serializer
      attributes :project_name, :starts_at, :ends_at, :role_name, :project_internal, :booked,
        :project_potential

      def project_name
        object.project.name
      end

      def role_name
        object.role.name
      end
    end
  end
end

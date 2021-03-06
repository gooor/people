attributes :id, :first_name, :last_name, :email, :archived, :gh_nick, :employment

node :role do |user|
  user.primary_role.try(:name)
end

node :contract_type do |user|
  user.contract_type.try(:name)
end

node :memberships do |user|
  user.flat_memberships
end

child :abilities do |ability|
  attributes :name
  node :icon_url do
    # .first must be called because ability is returning
    # Mongoid::Relations::Targets::Enumerable
    ability.first.icon.url
  end
end


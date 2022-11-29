class MembershipSerializer < ActiveModel::Serializer
  attributes :id :gym_id, :client_id
  has_one :membership 
  has_one :gym
end

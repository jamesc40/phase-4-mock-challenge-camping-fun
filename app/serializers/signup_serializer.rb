class SignupSerializer < ActiveModel::Serializer

  attributes :id, :name, :difficulty

  belongs_to :activity

end

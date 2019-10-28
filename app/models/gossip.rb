class Gossip < ApplicationRecord

	has_many :join_gossip_tags
	has_many :tags, through: :join_gossip_tags

	has_many :comments, as: :commentable #on rajoute le as::commentable pour permettre le commentaire de commentaires
	has_many :likes

	belongs_to :user

end

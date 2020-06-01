class Post < ApplicationRecord
  has_many :comments

  validates :description, {presence: true, length: {maximum: 140}}

  def user
    return User.find_by(id: self.user_id)
  end

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Post.where(['description LIKE ?', "%#{search}%"])
    else
      Post.all
    end
  end

end

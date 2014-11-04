class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :entries
  has_many :manages

  def entry?(event)
  	entries.find_by(event_id: event.id)
  end

  def entry!(event)
  	entries.create!(event_id: event.id)
  end

  def unentry!(event)
  	entries.find_by(event_id: event.id).destroy
  end

end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable

  belongs_to :sex
  belongs_to :specialty
  belongs_to :traning
  has_many :articles
  belongs_to :course, optional: true

  has_many :passports, inverse_of: :user, dependent: :destroy
  has_many :type_passports, through: :passports
  accepts_nested_attributes_for :passports, reject_if: :all_blank, allow_destroy: true

  has_many :certificates, inverse_of: :user, dependent: :destroy
  has_many :type_certificates, through: :certificates
  accepts_nested_attributes_for :certificates, reject_if: :all_blank, allow_destroy: true


  validates_presence_of :name, :surname, :middle_name, :email, :address, :traning_id
  validates :phone,
            :numericality => true,
            :length => {:is => 10}

  validates :identification_number,
            :numericality => true,
            :length => {:is => 12}

  validates_email :email

  validates :birthday,
            inclusion: {in: -60.years.from_now..-13.years.from_now, message: "Виберіть коректну дату народження"}

  attr_accessor :kurs
  validates_presence_of :kurs, on: :create
  validates_presence_of :kurs, on: :update

  def tets
    if kurs == "I" && self.specialty_id == 4 #ФБСк-11
      self.update(course_id: 1)
    elsif kurs == "I" && self.specialty_id == 5 #МЕк-11
      self.update(course_id: 2)
    elsif kurs == "I" && self.specialty_id == 6 #ПРк-11
      self.update(course_id: 3)
    elsif kurs == "I" && self.specialty_id == 7 #IПЗк-11
      self.update(course_id: 4)

    elsif kurs == "II" && self.specialty_id == 4 #ФБСк-21
      self.update(course_id: 5)
    elsif kurs == "II" && self.specialty_id == 5 #МЕк-21
      self.update(course_id: 6)
    elsif kurs == "II" && self.specialty_id == 6 #ПРк-21
      self.update(course_id: 7)
    elsif kurs == "II" && self.specialty_id == 7 #IПЗк-21
      self.update(course_id: 8)

    elsif kurs == "III" && self.specialty_id == 4 #ФБСк-31
      self.update(course_id: 9)
    elsif kurs == "III" && self.specialty_id == 5 #МЕк-31
      self.update(course_id: 10)
    elsif kurs == "III" && self.specialty_id == 6 #ПРк-31
      self.update(course_id: 11)
    elsif kurs == "III" && self.specialty_id == 7 #IПЗк-31
      self.update(course_id: 12)

    elsif kurs == "IV" && self.specialty_id == 5 #МЕк-41
      self.update(course_id: 13)
    elsif kurs == "IV" && self.specialty_id == 6 #ПРк-41
      self.update(course_id: 14)
    elsif kurs == "IV" && self.specialty_id == 7 #IПЗк-41
      self.update(course_id: 15)

    elsif kurs == "I" && self.specialty_id == 10 #ФК-11
      self.update(course_id: 16)
    elsif kurs == "I" && self.specialty_id == 11 #МЕ-11
      self.update(course_id: 17)
    elsif kurs == "I" && self.specialty_id == 13 #КН-11
      self.update(course_id: 18)
    elsif kurs == "I" && self.specialty_id == 12 #ПР-11
      self.update(course_id: 19)

    elsif kurs == "II" && self.specialty_id == 10 #ФК-21
      self.update(course_id: 20)
    elsif kurs == "II" && self.specialty_id == 11 #МЕ-21
      self.update(course_id: 21)
    elsif kurs == "II" && self.specialty_id == 13 #КН-21
      self.update(course_id: 22)
    elsif kurs == "II" && self.specialty_id == 12 #ПР-21
      self.update(course_id: 23)

    elsif kurs == "III" && self.specialty_id == 10 #ФК-31
      self.update(course_id: 24)
    elsif kurs == "III" && self.specialty_id == 8 #ЕП-31
      self.update(course_id: 25)
    elsif kurs == "III" && self.specialty_id == 11 #МЕ-31
      self.update(course_id: 26)
    elsif kurs == "III" && self.specialty_id == 13 #КН-31
      self.update(course_id: 27)
    elsif kurs == "III" && self.specialty_id == 12 #ПР-31
      self.update(course_id: 28)

    elsif kurs == "IV" && self.specialty_id == 10 #ФК-41
      self.update(course_id: 29)
    elsif kurs == "IV" && self.specialty_id == 8 #ЕП-41
      self.update(course_id: 30)
    elsif kurs == "IV" && self.specialty_id == 9 #ОА-41
      self.update(course_id: 31)
    elsif kurs == "IV" && self.specialty_id == 11 #МЕ-41
      self.update(course_id: 32)
    elsif kurs == "IV" && self.specialty_id == 13 #КН-41
      self.update(course_id: 33)
    elsif kurs == "IV" && self.specialty_id == 12 #ПР-41
      self.update(course_id: 34)

    elsif kurs == "I" && self.specialty_id == 16 #ФБм-11
      self.update(course_id: 35)
    elsif kurs == "I" && self.specialty_id == 14 #ЕПм-11
      self.update(course_id: 35)
    elsif kurs == "I" && self.specialty_id == 15 #ОАм-11
      self.update(course_id: 36)
    elsif kurs == "I" && self.specialty_id == 17 #МОм-11
      self.update(course_id: 37)
    elsif kurs == "I" && self.specialty_id == 17 #МЗДм-11
      self.update(course_id: 38)
    elsif kurs == "I" && self.specialty_id == 19 #КНм-11
      self.update(course_id: 39)
    elsif kurs == "I" && self.specialty_id == 20 #КБм-11
      self.update(course_id: 39)

    elsif kurs == "II" && self.specialty_id == 16 #ФБм-21
      self.update(course_id: 40)
    elsif kurs == "II" && self.specialty_id == 14 #ЕПм-21
      self.update(course_id: 35)
    elsif kurs == "II" && self.specialty_id == 15 #ОАм-21
      self.update(course_id: 41)
    elsif kurs == "II" && self.specialty_id == 17 #МОм-21
      self.update(course_id: 42)
    elsif kurs == "II" && self.specialty_id == 17 #МЗДм-21
      self.update(course_id: 43)
    elsif kurs == "II" && self.specialty_id == 19 #КНм-21
      self.update(course_id: 44)
    elsif kurs == "II" && self.specialty_id == 20 #КБм-21
      self.update(course_id: 44)
    end
  end
end
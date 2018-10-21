class PagesController < ApplicationController
  def history
    @title = 'Інформація про університет та філію'
  end
  def recognition
    @title = 'Свідчення визнань у хронологічному порядку'
  end
  def direktor
    @title = 'Дирекція'
  end
  def college
    @title = 'Бізнес-коледж Львівської філії'
  end
  def computer_sciences
    @title = "Кафедра математики та комп'ютерних дисциплін"
  end
  def management_and_social_humanitarian
    @title = 'Кафедра економіки та підприємництва'
  end
  def economy_and_entrepreneurship
    @title = 'Кафедра менеджменту та соціально-гуманітарних дисциплін'
  end
  def zaochne_viddilennya
    @title = 'Заочне відділення'
  end
  def department
    @title = 'Кафедри'
  end
  def studentu
    @title = 'Студенту'
  end
  def prijmalna_komisija
    @title = 'Приймальня'
  end
  def contacts
    @title ='Контакти'
  end
end

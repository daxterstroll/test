class ErrorsController < ApplicationController
  def show
    if request.path == '/404'
      @title = 'Сторінка, яку ви шукали, не існує'
    elsif request.path == '/500'
      @title = 'Зміни, які ви хотіли, було відхилено'
    elsif request.path == '/422'
      @title = 'Ми вибачаємося, але щось пішло не так'
    end
    render action: request.path[1..-1]
  end
end

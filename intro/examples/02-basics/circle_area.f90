program circle_area
    implicit none
    real :: r, area
    real, parameter :: pi = 3.14159
    
    print *, "Give the circle radius:"
    read *, r
    area = pi*r*r
    print *, "Area = ", area
end

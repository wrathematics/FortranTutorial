program types
    implicit none
    integer :: m, n
    real :: x, y
    logical :: s1, s2
    
    m = 1
    n = 2
    
    x = 1.0
    y = 1.1
    
    s1 = (m < n) .and. (x < y)
    s2 = (m + 1 <= n) .or. (x + 1 <= y)
    
    print *, s1
    print *, s2
    print *, .not. .true. .neqv. (.not. s1 .eqv. s2)
    
end

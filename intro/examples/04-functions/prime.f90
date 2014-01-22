function is_prime(n)
    implicit none
    integer :: n
    logical :: is_prime
    integer :: div
    
    
    if (n == 1) then
        is_prime = .false.
    else if (n == 2) then
        is_prime = .true.
    else if (mod(n, 2) == 0) then
        is_prime = .false.
    else
        div = 3
        do
            if (div*div > n) then
                is_prime = .true.
                exit
            else if (mod(n, div) == 0) then
                is_prime = .false.
                exit
            else
                div = div + 2
            end if
        end do
    end if
    
end function



program prime_test
    implicit none
    integer :: n
    logical :: is_prime
    
    print *, "Provide an integer:"
    read *, n
    
    if (n < 1) then
        print *, "Bad input"
        stop
    end if
    
    if (is_prime(n)) then
        print *, n, "is prime"
    else
        print *, n, "is NOT prime"
    end if
    
end

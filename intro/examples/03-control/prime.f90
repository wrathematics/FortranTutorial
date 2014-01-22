program isprime
    integer :: n, div
    logical :: ret
    
    print *, "Provide an integer:"
    read *, n
    
    ! Initial checks
    if (n < 1) then
        print *, "Bad input"
        stop
    else if (n == 1) then
        ret = .false.
    else if (n == 2) then
        ret = .true.
    else if (mod(n, 2) == 0) then
        ret = .false.
    else
        div = 3
        do
            if (div*div > n) then
                ret = .true.
                exit
            else if (mod(n, div) == 0) then
                ret = .false.
                exit
            else
                div = div + 2
            end if
        end do
    end if
    
    print *, ret
end program

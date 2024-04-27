function! unichar#InputEnclosedNumber(number)
    if a:number <= 10 && a:number >= 1
        let decVal = printf('%d', a:number + 0x2775)
    elseif a:number <= 20 && a:number >= 11
        let decVal = printf('%d', a:number + 0x24E0)
    endif
    if a:number <=20 && a:number >= 1
        let uniChar = nr2char(decVal)
        execute 'normal a' . uniChar
    endif
endfunction

function! unichar#InputEnclosedNumberPrompt()
    let user_input = input("Enter Circle Number: ")
    call unichar#InputEnclosedNumber(user_input)
endfunction


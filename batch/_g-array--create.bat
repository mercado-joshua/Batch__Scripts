@echo off
goto :main

:set_index
    call _g-string-unquote %~1[%~2] "!%-3!"
goto :eof

:main
    call _g-string-unquote delimiter %2
    call _g-string-unquote content %3

    set /a offset=0
    set /a index=0

    for /l %%g in (0,1,%content_length%) do (
        set character=!content:~%%g,1!

        if "!character!" equ "!delimiter!" (
            set /a length=%%g-!offset!

            set %1[!index!]=!content:~!offset!,!length!!
        )
    )
goto :eof
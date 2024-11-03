#Requires AutoHotkey 2.0+
#SingleInstance Force

; use Space as modifier
Space Up::
{
    if (A_PriorKey = "Space")
    {
        Send("{Space}")
    }
    return
}
Space & Tab::Backspace
Space & CapsLock::Enter
Space & Shift::Escape

Space & a::;
Space & s::l
Space & d::k
Space & f::j
Space & g::h
Space & q::p
Space & w::o
Space & e::i
Space & r::u
Space & t::y
Space & z::/
Space & x::.
Space & c::,
Space & v::m
Space & b::n


LAlt Up::
{
    if (A_PriorKey = "LAlt")
    {
        Send("{LAlt}")
    }  
    return
}

LAlt & q::Send("{{}")
LAlt & w::Send("{}}")
<!e::Up
LAlt & r::Send("{[}")
LAlt & t::Send("{]}")
LAlt & a::Send("{(}")
<!s::Left
<!d::Down
<!f::Right 
LAlt & g::Send("{)}")

;TODO change these to most frequent symbols in python
LAlt & z::Send("{_}")  
LAlt & x::Send("{+}")  
LAlt & c::Send("{-}")  
LAlt & v::Send("{=}")  
LAlt & b::Send("{*}") 

LAlt & 1::Send("{6}")  
LAlt & 2::Send("{7}")  
LAlt & 3::Send("{8}")  
LAlt & 4::Send("{9}")  
LAlt & 5::Send("{0}") 

;disable single LAlt?
; these dont work
;LAlt::return
;LAlt Up::
;{
;    if (A_PriorKey = "LAlt")
;    {
;        Send("{Space}")
;    }  
;    return
;}



LWin Up::
{
    if (A_PriorKey = "LWin")
    {
        Send("{LWin}")
    }  
    return
}

LWin & q::Send("{!}")
LWin & w::Send("{@}")
LWin & e::Send("{#}")
LWin & r::Send("{$}")
LWin & t::Send("{%}")
LWin & a::Send("{^}")
LWin & s::Send("{&}")
LWin & d::Send('{"}')
LWin & f::Send("{'}")
LWin & g::Send("{?}")
LWin & z::Send("{<}")
LWin & x::Send("{>}")
LWin & c::Send("{\}")
LWin & v::Send("{|}")
LWin & b::Send("{:}")

; move shortcuts with Win to RAlt
LWin::RAlt
RAlt::LWin
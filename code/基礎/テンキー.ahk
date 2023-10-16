vk1D & u::Send, {Blind}{7}
vk1D & i::Send, {Blind}{8}
vk1D & o::Send, {Blind}{9}

vk1D & j::Send, {Blind}{4}
vk1D & k::Send, {Blind}{5}
vk1D & l::Send, {Blind}{6}

vk1D & m::Send, {Blind}{1}
vk1D & ,::Send, {Blind}{2}
vk1D & .::Send, {Blind}{3}

vk1D & sc027::Send, {Blind}{+}
vk1D & p::Send, {Blind}{-}
vk1D & 8::Send, {Blind}{/}
vk1D & 9::Send, {Blind}{*}
vk1D & /::Send, {Blind}{=}

vk1D & t::Send, {Blind}{[}
vk1D & y::Send, {Blind}{]}

vk1D & esc::Send, {Blind}{.}

vk1D & AppsKey::Send, ,

vk1D & n::Send, {Blind}{~}

vk1D & vk1C::
    if GetKeyState("Shift") {
        Send, {^}
        return
    }
    Send, {Blind}{0}
Return
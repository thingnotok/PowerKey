#Requires AutoHotkey v2.0

; Win + = to increase volume
$#=::Volume_Up

; Win + - to decrease volume
$#-::Volume_Down

; Win + \ to mute/unmute volume
$#\:: Send("{Volume_Mute}")


; Win + [ to go to the previous media track
$#[:: Send("{Media_Prev}")

; Win + ] to go to the next media track
$#]:: Send("{Media_Next}")

; Win + ' to play/pause media
$#':: Send("{Media_Play_Pause}")
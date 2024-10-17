LDX #$00
; X specifies increment
LDY #$01
TYA
; Y specifies color
; Fill the first pixel
STA $0200, X
loop:
  INX
  STA $0200, X
  CPX #$ff
  BNE loop
  JMP middle
  
middle:
  INX
  STA $0300, X
  CPX #$ff
  BNE middle
  JMP bmiddle

bmiddle:
  INX
  STA $0400, X
  CPX #$ff
  BNE bmiddle

bottom:
  INX
  STA $0500, X
  CPX #$ff
  BNE bottom
  INY
  TYA
  JMP loop

  

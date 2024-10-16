; increments until ff 
LDX #$00
;A is a constant to define the color 
LDA #$02

loop:
  INX
  ; Store X + each viewbox register
  STA $200, X
  STA $300, X
  STA $400, X
  STA $500, X
  CPX #$ff
  BNE loop
  TAY
  INY
  TYA
  JMP loop

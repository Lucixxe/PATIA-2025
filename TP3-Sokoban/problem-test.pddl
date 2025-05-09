(define (problem sokoban-generated)
  (:domain sokoban)
  (:objects
    p00 - position
    p01 - position
    p02 - position
    p03 - position
    p04 - position
    p05 - position
    p06 - position
    p07 - position
    p013 - position
    p014 - position
    p015 - position
    p016 - position
    p10 - position
    p11 - position
    p12 - position
    p13 - position
    p14 - position
    p15 - position
    p16 - position
    p17 - position
    p19 - position
    p110 - position
    p111 - position
    p20 - position
    p21 - position
    p22 - position
    p23 - position
    p24 - position
    p25 - position
    p26 - position
    p27 - position
    p29 - position
    p211 - position
    p214 - position
    p215 - position
    p30 - position
    p31 - position
    p32 - position
    p33 - position
    p34 - position
    p35 - position
    p36 - position
    p37 - position
    p39 - position
    p310 - position
    p311 - position
    p312 - position
    p313 - position
    p314 - position
    p315 - position
    p49 - position
    p413 - position
    p414 - position
    p415 - position
    p51 - position
    p52 - position
    p53 - position
    p54 - position
    p55 - position
    p56 - position
    p59 - position
    p510 - position
    p511 - position
    p512 - position
    p513 - position
    p61 - position
    p62 - position
    p63 - position
    p64 - position
    p65 - position
    p66 - position
    p67 - position
    p68 - position
    p69 - position
    p610 - position
    p611 - position
    p612 - position
    p613 - position
    p616 - position
    p71 - position
    p72 - position
    p73 - position
    p74 - position
    p75 - position
    p76 - position
    p79 - position
    p710 - position
    p711 - position
    p712 - position
    p713 - position
    p714 - position
    p716 - position
    p89 - position
    p810 - position
    p811 - position
    p812 - position
    p813 - position
    p816 - position
    p90 - position
    p91 - position
    p92 - position
    p93 - position
    p94 - position
    p95 - position
    p96 - position
    p97 - position
    p99 - position
    p910 - position
    p911 - position
    p912 - position
    p913 - position
    p914 - position
    p916 - position
    p100 - position
    p101 - position
    p102 - position
    p103 - position
    p104 - position
    p105 - position
    p106 - position
    p107 - position
    p1011 - position
    p1014 - position
    p1016 - position
    p110 - position
    p111 - position
    p112 - position
    p113 - position
    p114 - position
    p115 - position
    p116 - position
    p117 - position
    p118 - position
    p119 - position
    p1111 - position
    p1112 - position
    p1113 - position
    p1114 - position
    p1116 - position
    p120 - position
    p121 - position
    p122 - position
    p123 - position
    p124 - position
    p125 - position
    p126 - position
    p127 - position
    p128 - position
    p129 - position
    p1216 - position
    box1 - box
    box2 - box
    box3 - box
    box4 - box
    box5 - box
    box6 - box
    box7 - box
    box8 - box
    box9 - box
    box10 - box
    box11 - box
    box12 - box
    player - agent
  )

  (:init
    (at box1 p211)
    (at box2 p314)
    (at box3 p510)
    (at box4 p513)
    (at box5 p69)
    (at box6 p611)
    (at box7 p612)
    (at box8 p79)
    (at box9 p712)
    (at box10 p811)
    (at box11 p910)
    (at box12 p912)
    (at player p714)
    (goal p51)
    (goal p52)
    (goal p53)
    (goal p54)
    (goal p61)
    (goal p62)
    (goal p63)
    (goal p64)
    (goal p71)
    (goal p72)
    (goal p73)
    (goal p74)
    (floor p00)
    (floor p01)
    (floor p02)
    (floor p03)
    (floor p04)
    (floor p05)
    (floor p06)
    (floor p07)
    (floor p013)
    (floor p014)
    (floor p015)
    (floor p016)
    (floor p10)
    (floor p11)
    (floor p12)
    (floor p13)
    (floor p14)
    (floor p15)
    (floor p16)
    (floor p17)
    (floor p19)
    (floor p110)
    (floor p111)
    (floor p20)
    (floor p21)
    (floor p22)
    (floor p23)
    (floor p24)
    (floor p25)
    (floor p26)
    (floor p27)
    (floor p29)
    (floor p211)
    (floor p214)
    (floor p215)
    (floor p30)
    (floor p31)
    (floor p32)
    (floor p33)
    (floor p34)
    (floor p35)
    (floor p36)
    (floor p37)
    (floor p39)
    (floor p310)
    (floor p311)
    (floor p312)
    (floor p313)
    (floor p314)
    (floor p315)
    (floor p49)
    (floor p413)
    (floor p414)
    (floor p415)
    (floor p51)
    (floor p52)
    (floor p53)
    (floor p54)
    (floor p55)
    (floor p56)
    (floor p59)
    (floor p510)
    (floor p511)
    (floor p512)
    (floor p513)
    (floor p61)
    (floor p62)
    (floor p63)
    (floor p64)
    (floor p65)
    (floor p66)
    (floor p67)
    (floor p68)
    (floor p69)
    (floor p610)
    (floor p611)
    (floor p612)
    (floor p613)
    (floor p616)
    (floor p71)
    (floor p72)
    (floor p73)
    (floor p74)
    (floor p75)
    (floor p76)
    (floor p79)
    (floor p710)
    (floor p711)
    (floor p712)
    (floor p713)
    (floor p714)
    (floor p716)
    (floor p89)
    (floor p810)
    (floor p811)
    (floor p812)
    (floor p813)
    (floor p816)
    (floor p90)
    (floor p91)
    (floor p92)
    (floor p93)
    (floor p94)
    (floor p95)
    (floor p96)
    (floor p97)
    (floor p99)
    (floor p910)
    (floor p911)
    (floor p912)
    (floor p913)
    (floor p914)
    (floor p916)
    (floor p100)
    (floor p101)
    (floor p102)
    (floor p103)
    (floor p104)
    (floor p105)
    (floor p106)
    (floor p107)
    (floor p1011)
    (floor p1014)
    (floor p1016)
    (floor p110)
    (floor p111)
    (floor p112)
    (floor p113)
    (floor p114)
    (floor p115)
    (floor p116)
    (floor p117)
    (floor p118)
    (floor p119)
    (floor p1111)
    (floor p1112)
    (floor p1113)
    (floor p1114)
    (floor p1116)
    (floor p120)
    (floor p121)
    (floor p122)
    (floor p123)
    (floor p124)
    (floor p125)
    (floor p126)
    (floor p127)
    (floor p128)
    (floor p129)
    (floor p1216)
    (adjacent p00 p10)
    (adjacent p00 p01)
    (adjacent p01 p11)
    (adjacent p01 p00)
    (adjacent p01 p02)
    (adjacent p02 p12)
    (adjacent p02 p01)
    (adjacent p02 p03)
    (adjacent p03 p13)
    (adjacent p03 p02)
    (adjacent p03 p04)
    (adjacent p04 p14)
    (adjacent p04 p03)
    (adjacent p04 p05)
    (adjacent p05 p15)
    (adjacent p05 p04)
    (adjacent p05 p06)
    (adjacent p06 p16)
    (adjacent p06 p05)
    (adjacent p06 p07)
    (adjacent p07 p17)
    (adjacent p07 p06)
    (adjacent p013 p113)
    (adjacent p013 p014)
    (adjacent p014 p114)
    (adjacent p014 p013)
    (adjacent p014 p015)
    (adjacent p015 p115)
    (adjacent p015 p014)
    (adjacent p015 p016)
    (adjacent p016 p116)
    (adjacent p016 p015)
    (adjacent p10 p00)
    (adjacent p10 p20)
    (adjacent p10 p11)
    (adjacent p11 p01)
    (adjacent p11 p21)
    (adjacent p11 p10)
    (adjacent p11 p12)
    (adjacent p12 p02)
    (adjacent p12 p22)
    (adjacent p12 p11)
    (adjacent p12 p13)
    (adjacent p13 p03)
    (adjacent p13 p23)
    (adjacent p13 p12)
    (adjacent p13 p14)
    (adjacent p14 p04)
    (adjacent p14 p24)
    (adjacent p14 p13)
    (adjacent p14 p15)
    (adjacent p15 p05)
    (adjacent p15 p25)
    (adjacent p15 p14)
    (adjacent p15 p16)
    (adjacent p16 p06)
    (adjacent p16 p26)
    (adjacent p16 p15)
    (adjacent p16 p17)
    (adjacent p17 p07)
    (adjacent p17 p27)
    (adjacent p17 p16)
    (adjacent p19 p29)
    (adjacent p19 p110)
    (adjacent p110 p19)
    (adjacent p110 p111)
    (adjacent p111 p211)
    (adjacent p111 p110)
    (adjacent p111 p112)
    (adjacent p112 p111)
    (adjacent p112 p113)
    (adjacent p113 p013)
    (adjacent p113 p112)
    (adjacent p113 p114)
    (adjacent p114 p014)
    (adjacent p114 p214)
    (adjacent p114 p113)
    (adjacent p114 p115)
    (adjacent p115 p015)
    (adjacent p115 p215)
    (adjacent p115 p114)
    (adjacent p115 p116)
    (adjacent p116 p016)
    (adjacent p116 p115)
    (adjacent p20 p10)
    (adjacent p20 p30)
    (adjacent p20 p21)
    (adjacent p21 p11)
    (adjacent p21 p31)
    (adjacent p21 p20)
    (adjacent p21 p22)
    (adjacent p22 p12)
    (adjacent p22 p32)
    (adjacent p22 p21)
    (adjacent p22 p23)
    (adjacent p23 p13)
    (adjacent p23 p33)
    (adjacent p23 p22)
    (adjacent p23 p24)
    (adjacent p24 p14)
    (adjacent p24 p34)
    (adjacent p24 p23)
    (adjacent p24 p25)
    (adjacent p25 p15)
    (adjacent p25 p35)
    (adjacent p25 p24)
    (adjacent p25 p26)
    (adjacent p26 p16)
    (adjacent p26 p36)
    (adjacent p26 p25)
    (adjacent p26 p27)
    (adjacent p27 p17)
    (adjacent p27 p37)
    (adjacent p27 p26)
    (adjacent p29 p19)
    (adjacent p29 p39)
    (adjacent p211 p111)
    (adjacent p211 p311)
    (adjacent p214 p114)
    (adjacent p214 p314)
    (adjacent p214 p215)
    (adjacent p215 p115)
    (adjacent p215 p315)
    (adjacent p215 p214)
    (adjacent p30 p20)
    (adjacent p30 p31)
    (adjacent p31 p21)
    (adjacent p31 p30)
    (adjacent p31 p32)
    (adjacent p32 p22)
    (adjacent p32 p31)
    (adjacent p32 p33)
    (adjacent p33 p23)
    (adjacent p33 p32)
    (adjacent p33 p34)
    (adjacent p34 p24)
    (adjacent p34 p33)
    (adjacent p34 p35)
    (adjacent p35 p25)
    (adjacent p35 p34)
    (adjacent p35 p36)
    (adjacent p36 p26)
    (adjacent p36 p35)
    (adjacent p36 p37)
    (adjacent p37 p27)
    (adjacent p37 p36)
    (adjacent p39 p29)
    (adjacent p39 p49)
    (adjacent p39 p310)
    (adjacent p310 p39)
    (adjacent p310 p311)
    (adjacent p311 p211)
    (adjacent p311 p310)
    (adjacent p311 p312)
    (adjacent p312 p311)
    (adjacent p312 p313)
    (adjacent p313 p413)
    (adjacent p313 p312)
    (adjacent p313 p314)
    (adjacent p314 p214)
    (adjacent p314 p414)
    (adjacent p314 p313)
    (adjacent p314 p315)
    (adjacent p315 p215)
    (adjacent p315 p415)
    (adjacent p315 p314)
    (adjacent p49 p39)
    (adjacent p49 p59)
    (adjacent p413 p313)
    (adjacent p413 p513)
    (adjacent p413 p414)
    (adjacent p414 p314)
    (adjacent p414 p413)
    (adjacent p414 p415)
    (adjacent p415 p315)
    (adjacent p415 p414)
    (adjacent p51 p61)
    (adjacent p51 p52)
    (adjacent p52 p62)
    (adjacent p52 p51)
    (adjacent p52 p53)
    (adjacent p53 p63)
    (adjacent p53 p52)
    (adjacent p53 p54)
    (adjacent p54 p64)
    (adjacent p54 p53)
    (adjacent p54 p55)
    (adjacent p55 p65)
    (adjacent p55 p54)
    (adjacent p55 p56)
    (adjacent p56 p66)
    (adjacent p56 p55)
    (adjacent p59 p49)
    (adjacent p59 p69)
    (adjacent p59 p510)
    (adjacent p510 p610)
    (adjacent p510 p59)
    (adjacent p510 p511)
    (adjacent p511 p611)
    (adjacent p511 p510)
    (adjacent p511 p512)
    (adjacent p512 p612)
    (adjacent p512 p511)
    (adjacent p512 p513)
    (adjacent p513 p413)
    (adjacent p513 p613)
    (adjacent p513 p512)
    (adjacent p61 p51)
    (adjacent p61 p71)
    (adjacent p61 p62)
    (adjacent p62 p52)
    (adjacent p62 p72)
    (adjacent p62 p61)
    (adjacent p62 p63)
    (adjacent p63 p53)
    (adjacent p63 p73)
    (adjacent p63 p62)
    (adjacent p63 p64)
    (adjacent p64 p54)
    (adjacent p64 p74)
    (adjacent p64 p63)
    (adjacent p64 p65)
    (adjacent p65 p55)
    (adjacent p65 p75)
    (adjacent p65 p64)
    (adjacent p65 p66)
    (adjacent p66 p56)
    (adjacent p66 p76)
    (adjacent p66 p65)
    (adjacent p66 p67)
    (adjacent p67 p66)
    (adjacent p67 p68)
    (adjacent p68 p67)
    (adjacent p68 p69)
    (adjacent p69 p59)
    (adjacent p69 p79)
    (adjacent p69 p68)
    (adjacent p69 p610)
    (adjacent p610 p510)
    (adjacent p610 p710)
    (adjacent p610 p69)
    (adjacent p610 p611)
    (adjacent p611 p511)
    (adjacent p611 p711)
    (adjacent p611 p610)
    (adjacent p611 p612)
    (adjacent p612 p512)
    (adjacent p612 p712)
    (adjacent p612 p611)
    (adjacent p612 p613)
    (adjacent p613 p513)
    (adjacent p613 p713)
    (adjacent p613 p612)
    (adjacent p616 p716)
    (adjacent p71 p61)
    (adjacent p71 p72)
    (adjacent p72 p62)
    (adjacent p72 p71)
    (adjacent p72 p73)
    (adjacent p73 p63)
    (adjacent p73 p72)
    (adjacent p73 p74)
    (adjacent p74 p64)
    (adjacent p74 p73)
    (adjacent p74 p75)
    (adjacent p75 p65)
    (adjacent p75 p74)
    (adjacent p75 p76)
    (adjacent p76 p66)
    (adjacent p76 p75)
    (adjacent p79 p69)
    (adjacent p79 p89)
    (adjacent p79 p710)
    (adjacent p710 p610)
    (adjacent p710 p810)
    (adjacent p710 p79)
    (adjacent p710 p711)
    (adjacent p711 p611)
    (adjacent p711 p811)
    (adjacent p711 p710)
    (adjacent p711 p712)
    (adjacent p712 p612)
    (adjacent p712 p812)
    (adjacent p712 p711)
    (adjacent p712 p713)
    (adjacent p713 p613)
    (adjacent p713 p813)
    (adjacent p713 p712)
    (adjacent p713 p714)
    (adjacent p714 p713)
    (adjacent p716 p616)
    (adjacent p716 p816)
    (adjacent p89 p79)
    (adjacent p89 p99)
    (adjacent p89 p810)
    (adjacent p810 p710)
    (adjacent p810 p910)
    (adjacent p810 p89)
    (adjacent p810 p811)
    (adjacent p811 p711)
    (adjacent p811 p911)
    (adjacent p811 p810)
    (adjacent p811 p812)
    (adjacent p812 p712)
    (adjacent p812 p912)
    (adjacent p812 p811)
    (adjacent p812 p813)
    (adjacent p813 p713)
    (adjacent p813 p913)
    (adjacent p813 p812)
    (adjacent p816 p716)
    (adjacent p816 p916)
    (adjacent p90 p100)
    (adjacent p90 p91)
    (adjacent p91 p101)
    (adjacent p91 p90)
    (adjacent p91 p92)
    (adjacent p92 p102)
    (adjacent p92 p91)
    (adjacent p92 p93)
    (adjacent p93 p103)
    (adjacent p93 p92)
    (adjacent p93 p94)
    (adjacent p94 p104)
    (adjacent p94 p93)
    (adjacent p94 p95)
    (adjacent p95 p105)
    (adjacent p95 p94)
    (adjacent p95 p96)
    (adjacent p96 p106)
    (adjacent p96 p95)
    (adjacent p96 p97)
    (adjacent p97 p107)
    (adjacent p97 p96)
    (adjacent p99 p89)
    (adjacent p99 p910)
    (adjacent p910 p810)
    (adjacent p910 p99)
    (adjacent p910 p911)
    (adjacent p911 p811)
    (adjacent p911 p1011)
    (adjacent p911 p910)
    (adjacent p911 p912)
    (adjacent p912 p812)
    (adjacent p912 p911)
    (adjacent p912 p913)
    (adjacent p913 p813)
    (adjacent p913 p912)
    (adjacent p913 p914)
    (adjacent p914 p1014)
    (adjacent p914 p913)
    (adjacent p916 p816)
    (adjacent p916 p1016)
    (adjacent p100 p90)
    (adjacent p100 p110)
    (adjacent p100 p101)
    (adjacent p101 p91)
    (adjacent p101 p111)
    (adjacent p101 p100)
    (adjacent p101 p102)
    (adjacent p102 p92)
    (adjacent p102 p112)
    (adjacent p102 p101)
    (adjacent p102 p103)
    (adjacent p103 p93)
    (adjacent p103 p113)
    (adjacent p103 p102)
    (adjacent p103 p104)
    (adjacent p104 p94)
    (adjacent p104 p114)
    (adjacent p104 p103)
    (adjacent p104 p105)
    (adjacent p105 p95)
    (adjacent p105 p115)
    (adjacent p105 p104)
    (adjacent p105 p106)
    (adjacent p106 p96)
    (adjacent p106 p116)
    (adjacent p106 p105)
    (adjacent p106 p107)
    (adjacent p107 p97)
    (adjacent p107 p117)
    (adjacent p107 p106)
    (adjacent p1011 p911)
    (adjacent p1011 p1111)
    (adjacent p1014 p914)
    (adjacent p1014 p1114)
    (adjacent p1016 p916)
    (adjacent p1016 p1116)
    (adjacent p110 p100)
    (adjacent p110 p120)
    (adjacent p110 p111)
    (adjacent p111 p101)
    (adjacent p111 p121)
    (adjacent p111 p110)
    (adjacent p111 p112)
    (adjacent p112 p102)
    (adjacent p112 p122)
    (adjacent p112 p111)
    (adjacent p112 p113)
    (adjacent p113 p103)
    (adjacent p113 p123)
    (adjacent p113 p112)
    (adjacent p113 p114)
    (adjacent p114 p104)
    (adjacent p114 p124)
    (adjacent p114 p113)
    (adjacent p114 p115)
    (adjacent p115 p105)
    (adjacent p115 p125)
    (adjacent p115 p114)
    (adjacent p115 p116)
    (adjacent p116 p106)
    (adjacent p116 p126)
    (adjacent p116 p115)
    (adjacent p116 p117)
    (adjacent p117 p107)
    (adjacent p117 p127)
    (adjacent p117 p116)
    (adjacent p117 p118)
    (adjacent p118 p128)
    (adjacent p118 p117)
    (adjacent p118 p119)
    (adjacent p119 p129)
    (adjacent p119 p118)
    (adjacent p1111 p1011)
    (adjacent p1111 p1112)
    (adjacent p1112 p1111)
    (adjacent p1112 p1113)
    (adjacent p1113 p1112)
    (adjacent p1113 p1114)
    (adjacent p1114 p1014)
    (adjacent p1114 p1113)
    (adjacent p1116 p1016)
    (adjacent p1116 p1216)
    (adjacent p120 p110)
    (adjacent p120 p121)
    (adjacent p121 p111)
    (adjacent p121 p120)
    (adjacent p121 p122)
    (adjacent p122 p112)
    (adjacent p122 p121)
    (adjacent p122 p123)
    (adjacent p123 p113)
    (adjacent p123 p122)
    (adjacent p123 p124)
    (adjacent p124 p114)
    (adjacent p124 p123)
    (adjacent p124 p125)
    (adjacent p125 p115)
    (adjacent p125 p124)
    (adjacent p125 p126)
    (adjacent p126 p116)
    (adjacent p126 p125)
    (adjacent p126 p127)
    (adjacent p127 p117)
    (adjacent p127 p126)
    (adjacent p127 p128)
    (adjacent p128 p118)
    (adjacent p128 p127)
    (adjacent p128 p129)
    (adjacent p129 p119)
    (adjacent p129 p128)
    (adjacent p1216 p1116)
  )

  (:goal (and
    (at box1 p51)
    (at box2 p52)
    (at box3 p53)
    (at box4 p54)
    (at box5 p61)
    (at box6 p62)
    (at box7 p63)
    (at box8 p64)
    (at box9 p71)
    (at box10 p72)
    (at box11 p73)
    (at box12 p74)
  ))
)

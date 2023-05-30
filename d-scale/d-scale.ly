\version "2.24.1"

#(set-global-staff-size 30)

d_scale = {
  \relative {
    \clef bass
    \time 4/4
      d'4\downbow d d r | cis4\upbow cis cis r | b4\downbow b b r | a4\upbow
      a a r | g4\downbow g g r | fis4\upbow
      fis fis r | e4\downbow e e r | d4\upbow r r r |
      d4\downbow  d d r | e4\upbow e e r | fis4\downbow fis
      fis r | g4\upbow g g r | a4\downbow a a r | b4\upbow b b r | cis4\downbow cis cis
      r | d2.\upbow r4 \bar "|."
  }
}

\score {
    \new Staff \d_scale
}

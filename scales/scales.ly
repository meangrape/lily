\version "2.24.1"

#(set-global-staff-size 30)

d_scale = {
  \relative {
    \clef bass
    \key d \major
    \time 4/4
      d'\downbow d d r | cis cis cis r | b b b r | a a a r | g g g r | fis
      fis fis r | e e e r | d r r r | d  d d r | e e e r | fis fis
      fis r | g g g r | a a a r | b b b r | cis cis cis r | d2. r4 \bar "|."
  }
}

g_scale = {
  \relative {
    \clef bass
    \key g \major
    \time 4/4
    g,2\downbow a | b c | d e | fis g | g fis | e d | c b | a g \bar "|."
  }

}

\book {
  \header {
    tagline = #f
  }
  \markup "D major"
  \score {
      \new Staff \d_scale
  }

  \markup "G major"
  \score {
      \new Staff \g_scale
  }
}

\version "2.24.1"

#(set-global-staff-size 30)

morning = {
  \relative {
    \clef bass
    \key g \major
    \time 4/4
      g\upbow g fis d | g g fis d | e e fis fis | g g g r \bar ":|."
  }
}

lightly_row = {
  \relative {
    \clef bass
    \key g \major
    \time 4/4
      a\upbow  fis fis r | g e e r | d e fis g | a a a r | a fis fis r | g4
      e e r | d fis a a | d, r r r \bar "|."
  }
}

carribean_island = {
  \relative {
    \clef bass
    \key d \major
    \time 4/4
    d'^\markup { \tiny \italic pizz. } d d r | cis cis cis r | d d cis cis | d cis d r \bar "|."
  }
}

olympic_high_jump = {
  \relative {
    \clef bass
    \key g \major
    \time 4/4
    d'\upbow d d, d | d' d cis r | d d d, d | d' cis d r \bar ":|."
  }
}

\book {
  \header {
    tagline = #f
  }
  \markup "Morning Dance"
  \score {
      \new Staff \morning
  }

  \markup "Lightly Row"
  \score {
    \new Staff \lightly_row
  }

  \markup "Carribean Island"
  \score {
    \new Staff \carribean_island
  }

  \markup "Olympic High Jump"
  \score {
    \new Staff \olympic_high_jump
  }
}

\version "2.24.1"

#(set-global-staff-size 30)

\header { tagline = ##f }

\score {
  \new Staff
  {
    \clef bass
    \time 4/4
    \omit Score.BarNumber
    \omit Staff.TimeSignature
    \repeat unfold 9 { s1 | \break }
  }
  \layout {}
}

\paper {
  indent = #0
  print-page-number = ##f
}

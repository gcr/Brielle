\version "2.12.3"

brielleRealChords = \chordmode {
  e2.:m
  g:aug
  g
  a
  c
  g
  d
}
brielleChords = \relative c' {
  \chordmode {
    e2.:m           % dotted half-note E minor
    g:aug/dis       % G augmented w/ dis on bottom
    g:/d            % G natural w/ D on bottom
    cis:m6-^5       % 1st inverted A alternate: g:5-/des
    c
  }
  <b d g d'>
  <d a' d fis>
  \chordmode {
  }
}


%#(set-global-staff-size 15)

\score {
  %%%%%%%%%%%%%%%%%
  <<
    \new ChordNames \brielleRealChords
    \new Staff \with {
    } {
      \TimeKey
      \new Voice = "brielleLyrics" \relative c'' {
        r4 b g | a b g | a4. d,8 b'4 | a4 g8 b4. | e,4 r e | d d g | g8 ~ a8 ~ a2 |
      }
    }
    \new Lyrics \with {
        %fontSize = #-2
      } \lyricsto "brielleLyrics" {
      When the new skies grow old
      and I start to feel cold,
      I'll sail home a -- gain! __
    }
    \new StaffGroup <<
      \new Staff {
        \TimeKey
        \brielleChords
      }
      \new TabStaff  {
        \TimeKey
        \transpose c' c \brielleChords
      }
    >>
  >>
}

#(set-default-paper-size "letter")

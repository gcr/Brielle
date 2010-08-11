%%% CHORD NAMES
brChordsIntro = \chordmode {
  c2.:sus2
  g2.
  d2.
  g4.:sus2
  g4.
  c2.:sus2
  g2.
  d2. s2.
}
brChordsTr = \chordmode {
  e2.:m
  g:aug
  g
  a
  c
  s
  d
}

%%% STRUCTURE
brChords = {
  \repeat unfold 6 {
    \brChordsIntro
  }
  \brChordsTr
}

% vim: foldmethod=marker foldmarker={,}

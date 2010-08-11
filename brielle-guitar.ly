%%% GUITAR
brGuitarIntro = \relative c' {
  \repeat unfold 2 { c8 g' d } |
  \repeat unfold 2 { b8 g' d } |
  \repeat unfold 2 { d8 a' d, } |
  g,8 a' b d, g d |
  \repeat unfold 2 { c8 g' d } |
  \repeat unfold 2 { g,8 g' d } |
  d e fis a d, g | % the first D should be 8va lower
  d fis g a d g, |

  \repeat unfold 2 { c,8 g' d } |
  \repeat unfold 2 { b8 g' d } |
  \repeat unfold 2 { d8 a' d, } |
  g,8 a' b d, g d |
  \repeat unfold 2 { c8 g' d } |
  \repeat unfold 2 { e g d } |
  d e fis a d, g | % first D: 8va lower
  d fis g a d g, |
}
brGuitarTr = \relative c' {
  \chordmode {
    e2.:m           % dotted half-note E minor
    g:aug/dis       % G augmented w/ dis on bottom
    g:/d            % G natural w/ D on bottom
    cis:m6-^5       % 1st inverted A alternate: g:5-/des
    c4.
  }
  \sl c4 c8 |
  c4. c8 c4 \nsl |
  <d a' d fis>4. \sl d4 d8 |
  d4. d8 d8 d8 \nsl |
}
brGuitarChorus = \relative c' {
  <g b d g b g'>4
  \sl g8 g4 g8 |
  g4 g8 g4 g8 \nsl|

}

%%% STRUCTURE
brGuitar = {
  \brGuitarIntro
  \brGuitarIntro % also VAa
  \brGuitarIntro % also VAb
  \brGuitarTr
  \brGuitarChorus
}

% vim: foldmethod=marker foldmarker={,}

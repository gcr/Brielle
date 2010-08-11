%{ Brielle by Sky Sailing -- engraved by gcr
 ,ggggggggggg,                                                   
dP"""88""""""Y8,                           ,dPYb, ,dPYb,         
Yb,  88      `8b                           IP'`Yb IP'`Yb         
 `"  88      ,8P             gg            I8  8I I8  8I         
     88aaaad8P"              ""            I8  8' I8  8'         
     88""""Y8ba   ,gggggg,   gg    ,ggg,   I8 dP  I8 dP   ,ggg,  
     88      `8b  dP""""8I   88   i8" "8i  I8dP   I8dP   i8" "8i 
     88      ,8P ,8'    8I   88   I8, ,8I  I8P    I8P    I8, ,8I 
     88_____,d8',dP     Y8,_,88,_ `YbadP' ,d8b,_ ,d8b,_  `YbadP' 
    88888888P"  8P      `Y88P""Y8888P"Y8888P'"Y888P'"Y88888P"Y888
%}

%%% { CONFIGURATION
brTimeKey = { \time 6/8 \key g \major }

% Pick which flavor of things you want
% #'preprod or #'release
brVAFlavor   = #'preprod % verse A
brTrFlavor   = #'preprod % transition
brCAFlavor   = #'preprod % chorus
brCBFlavor   = #'preprod
brVBFlavor   = #'preprod % verse B
brCEndFlavor = #'preprod % ending

% slashes -- turn on improvisation (voices need the "Pitch_squash_engraver")
% and hide tab noteheads.
sl = {
  \improvisationOn
  %\override TabNoteHead #'transparent = ##t
  \override TabNoteHead #'stencil = ##f
  % ^ this is better but makes warnings
}
nsl = {
  \improvisationOff
  %\revert TabNoteHead #'transparent
  \revert TabNoteHead #'stencil
}
%%% }

%%% { LYRICS
brLyricsVA = \lyricmode {
  There's a hand -- writ -- ten note
  pressed in the door
  of her screened- in porch
  and I am sail -- ing a -- way
  re -- cal -- ling that day
  \tag #'preprod { miles }
  \tag #'release { mi -- les } from shore.

  She was still wear -- ing white
  and ro -- bin's egg blue;
  her grand -- mo -- ther's dress.
  \tag #'preprod { And I left home }
  \tag #'release { When I left }
      ear -- ly this year.
  How I wound up here
  is a -- ny -- one's guess.
}

brLyricsTr = \lyricmode {
  % Transition
  When the new sites grow old
  and I start to feel cold,
  I'll sail home a -- gain. __
}

brLyricsCA = \lyricmode {
  % Chorus
  Good -- bye Bri -- elle!
  \tag #'preprod { On -- ly sea -- sons can tell }
  \tag #'release { On -- ly whis -- pers can tell }
  of the sweet dreams that we knew so well!
  I'll see you a -- round
  our dear o -- cean town.
}
brLyricsCB = \lyricmode {
  The fro -- zen days we set a -- blaze
  sent me drif -- ting a -- way!
  Like a but -- ter -- fly, \tag #'preprod { I }
                            \tag #'release { you } floa -- ted by
  \tag #'preprod { and now I'm a -- lone. }
  \tag #'release { and now you're a -- lone. }
  I wish I knew when I'll be back a -- gain.
}
brLyricsCEndA = \lyricmode {
  So un -- til then, I wish you well,
  my dear Bri -- elle!
}

brLyricsVB = \lyricmode {
  % last verse
  \tag #'preprod { Skip -- ping }
  \tag #'release { Strol -- ling }
      o -- ver the sand
  and cob -- ble -- stone paths
  that wind through the trees.

  \tag #'preprod { Bre -- athing the sweet o -- cean air
    makes a shy boy a -- ware
    that he could be free! }
  \tag #'release { Bre -- athing the sweet for -- est air
    makes a blue -- bird a -- ware 
    that she could be free! }
}

brLyricsCEndB = \lyricmode {
  So un -- til then, I wish you well.
  So un -- til then, I wish you well!
  \tag #'preprod {
    For the time be -- ing, fare -- well, my dear Bri -- elle!
  }
  \tag #'release {
    I love you, my dar -- ling; fare -- well, my dear Bri -- elle!
  }
}
%%% }

%%% { SINGING VOICE
brVoiceVAa = \relative c'' {
  r4 b a | % there's a
  a g8 e4 d8~ |
  d2. | % note
  e4 g a8 g8~ | % stuck in the
  g2 r8 e |
  d4 d g | % her screened-in
  fis2. |
  R2. |
  r8 d b'4 a | % And I am sailing
  a4 g e8 d8 ~ |
  d2 r8 d8 |
  e4 g8 a4 e8 ~ |
  e2. | % ...that day
  \tag #'preprod {
    d4. g | % miles from
  }
  \tag #'release {
    d8 e4 g4. | % mi--les from
  }
  a2. | % shore
  R2. |
}
brVoiceVAb = \relative c'' {
  r4 b a | % She was
  a g8 e4 d8~ |
  d2 r8 d8 | % white...and robin's
  e8 g4 a4 \tag #'preprod { g8~ | g2 }
           \tag #'release { g8( | e2) }
    r8 e |
  d4 e8 g4. | % grandmother's
  fis2. |
  R2. |
  \tag #'preprod {
    r8 d b' a r a | % And I left home
  }
  \tag #'release {
    r8 d, b'4 a | % When I left
  }
  a4 g8 e4 d8 ~ |
  d2 r8 d8 |
  e4 g8 a4 e8 ~ |
  e2 r8 d8 | % here is
  d8 e4 g4. | % anyone's
  a2. | R2. | % guess
}
brVoiceTrA = \relative c'' {
  r4 b g8 a8~ | % When the new
  a8 b4 g a8~|    % TIES!
  a4 g8 b4 a8~ |  % TIES!
  a4 g8 b4 e,8~ | % TIES! Triple tied measure combo
  e4 r e |
  d \tag #'preprod {d4 g8}
    \tag #'release {g4 e8 } a8~ |    % SO MANY TIES WHAT.
  a2. |
  r2.|
}
brVoiceCA = \relative c'' {
  r2.|
  d,4 d g8 a~ | % Good bye, Brie-elle!
  a2. |
  r4 a4 g |
  c8[ d]~d2 | %se-easons
  c4. b |
  e,2. |
  r4 d g8 a8~ | % of the
  a8 b4 g a8~ |
  a8 b4 g g8(|
  a2.) |
  r4 a b |
  a g8 e4. | % you around
  r4 a4 b |
  a g d~ |
  d2 d8 a'8~ | % town! The--
}
brVoiceCB = \relative c'' {
  % The
  a8 g4 d a'8 ~| % frozen days
  a8 b4 g g8(|
  a2.) |
  r4 a g | % sent me
  c8[ d]~d2 | % drifting
  c2 b8 e,8 ~|
  e2. |
  r4 a a8 a8 | % Like a 
  g4 d4. d8 | % Butterfly, I 
  a'8 g4 d g8 | % floated by, and
  a4 b g8 a8~ |
  a4 g8 b4 a8 ~| % ~lone! I wish I
  a8 g4 e4.~ |
  e4 a b|
  a4 g8 d4.|
  r2 a'8 a8~| % so
}
brVoiceCEndA = \relative c'' {
  % ... So
  a8 g4 d4 a'8~|
  a8 b4 a g8~ |
  g2. |
  d4 g fis8 g8 ~ |
}
brVoiceVB = \relative c'' {
  r4 b8 a4 a8~ | % Skipping
  a8 g4 e d8 ~|
  d2 r8 d8 |
  e8 g4 a e8 ~| % cobblestone
  e2 r8 e |
  d4 d g8 a8 ~ |
  a2. | % trees!
  R2. |
  r4 b8 a4 a8 | % And breathing the
  \tag #'preprod {
    \times 5/6 {
      a4 g e    %   WTF !! I swear it sounds like this.
    } d8~ | % sweet ocean air ~
    d4 d4 d8 e8 ~| % ~air makes a shy
    e4 g a8 g8 ~ | % shy boy a-ware
    g2 r8 d8 | % ~ware that
    d4 b'8 c4 a8~ | % he could be
  }
  \tag #'release { % a bit saner.
    a4 g8 e4 d8~ % sweet forest air
    d4 d4 d8 b'8( | % ~air makes a blue
    a4) g fis8 e8 ~ | % ~ue bird a-ware
    e2 r8 e8 | % ~ware that
    d4 g8 d'4 a8~ | % she could be
  }
  a2. | % free!
  R2. |
}
brVoiceTrB = \relative c'' {
  r4 b g8 a8~ | % When the new
  a8 b4 g a8~|    % TIES!
  \tag #'preprod { 
    a4 g8 b4 a8 ~ |  % TIES!
    a4 g8 b4 e,8 ~ | % TIES! Triple tied measure combo
    e4 r e |
    d d4 g8 a8 ~ |
    a2. |
  }
  \tag #'release { 
    a4 g8 b4 a8~ |
    a4 g8 d4 c8~ |
    c4 r c |
    d d4 b8 a8 ~
    a4 r2 |
  }
  r2.|
}
brVoiceCEndB = \relative c'' {
  % ... So
  a8 g4 d a'8~| % until then, I
  a8 b4 a g8~|
  g2. |
  r2 a8 a8~|
  a8 g4 d a'8~|
  a8 b4 a g8~|
  g2. |
  \tag #'preprod {
    r2. |
    a8 g4 d4. | % For the time
    a'8 b4 a4 g8~ |
    g2. |
    d4 g fis8 g8 ~ |
    g2. |
  }
  \tag #'release {
    r2 r8 d8 | % I
    a'8 g4 d4 a'8 ~| % love you, my
    a8 b4 a4 g8 ~ |
    g2. |
    a4 b a8 g8 ~ |
    g2. |
  }
}
%%% }

%%% { CHORD NAMES
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
%%% }

%%% { GUITAR
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

%%% }


%%% { STRUCTURE
brChords = {
  \repeat unfold 6 {
    \brChordsIntro
  }
  \brChordsTr
}

brVoice = {
  \autoBeamOff
  R2.*16 |
  \keepWithTag \brVAFlavor \brVoiceVAa
  \keepWithTag \brVAFlavor \brVoiceVAb

  \keepWithTag \brTrFlavor \brVoiceTrA
  \keepWithTag \brCAFlavor \brVoiceCA
  \keepWithTag \brCBFlavor \brVoiceCB
  \brVoiceCEndA
  g'2. | % tied with previous
  R2.*15
  \keepWithTag \brVBFlavor \brVoiceVB
  \keepWithTag \brTrFlavor \brVoiceTrB
  \keepWithTag \brCAFlavor \brVoiceCA
  \keepWithTag \brCBFlavor \brVoiceCB
  \keepWithTag \brCEndFlavor \brVoiceCEndB
  R2.*3 |
  \bar "|."
}

brLyrics = {
  % Verse 1 and transition
  \keepWithTag \brVAFlavor \brLyricsVA
  \brLyricsTr

  % Chorus
  \keepWithTag \brCAFlavor \brLyricsCA
  \keepWithTag \brCBFlavor \brLyricsCB
  \brLyricsCEndA

  % Verse 2 and transition
  \keepWithTag \brVBFlavor \brLyricsVB
  \brLyricsTr

  % Chorus
  \keepWithTag \brCAFlavor \brLyricsCA
  \keepWithTag \brCBFlavor \brLyricsCB
  \keepWithTag \brCBFlavor \brLyricsCEndB
}

brGuitar = {
  \brGuitarIntro
  \brGuitarIntro % also VAa
  \brGuitarIntro % also VAb
  \brGuitarTr
  \brGuitarChorus
}

%%% }

% vim: foldmethod=marker foldmarker={,}

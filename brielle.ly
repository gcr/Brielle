%{
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

brTimeKey = { \time 6/8 \key g \major }

%%% Pick which flavor of things you want
%%% #'preprod or #'release
brVAFlavor = #'preprod
brCAFlavor = #'preprod
brCBFlavor = #'preprod

%%% LYRICS
brLyricsVA = \lyricmode {
  There's a hand -- writ -- ten note
  pressed in the door
  of her screened- in porch
  and I am sail -- ing a -- way
  re -- cal -- ling that day
  miles from shore.

  She was still wear -- ing white
  and ro -- bin's egg blue;
  her grand -- mo -- ther's dress.
  And I left home ear -- ly this year.
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
  Like a but -- ter -- fly, I floa -- ted by
  \tag #'preprod { and now I'm a -- lone. }
  \tag #'release { and now you're a -- lone. }
  I wish | I knew when I'll be back a -- gain.
}
brLyricsCEndA = \lyricmode {
  So un -- til then, I wish you well,
  my dear Bri -- elle!
}

brLyricsVB = \lyricmode {
  % last verse
  Skip -- ping o -- ver the sand
  and cob -- ble -- stone paths
  that wind through the trees.

  And_bre -- athing the sweet o -- cean air
  \tag #'preprod { makes a shy boy a -- ware }
  \tag #'preprod { makes a blue -- bird a -- ware }
  that he could be free!
}

brLyricsCEndB = \lyricmode {
  So un -- til then, I wish you well
  So un -- til then, I wish you well
  For the time be -- ing, fare -- well, my dear Bri -- elle!
}

%%% SINGING VOICE
brVoiceIntro  =  \relative c'' {
  R2.*16 |
}
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
  d4. g | % miles from
  a2. | % shore
  R2. |
}
brVoiceVAb = \relative c'' {
  r4 b a | % She was
  a g8 e4 d8~ |
  d2 r8 d8 | % white...and robin's
  e4 g a8 g8~ |
  g2 r8 e |
  d4 e8 g4. | % grandmother's
  fis2. |
  R2. |
  r8 d b' a r a | % And I left home
  a4 g8 e4 d8 ~ |
  d2 r8 d8 |
  e4 g8 a4 e8 ~ |
  e2 r8 d8 | % here is
  d8 e4 g4. | % anyone's
  a2. | R2. | % guess
}
brVoiceTr = \relative c'' {
  \break
  r4 b g8 a8~ | % When the new
  a8 b4 g a8~|    % TIES!
  a4 g8 b4 a8~ |  % TIES!
  a4 g8 b4 e,8~ | % TIES! Triple tied measure combo
  e4 r e |
  d d g8 a8~ |    % SO MANY TIES WHAT.
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
  c2 b4 |
  e,2. |
  r4 a a | % Like a 
  a8 g4 d d8 | % Butterfly, I 
  a'8 g4 d g8 | % floated by, and
  a4 b g8 a8~ |
  a4. g8 b4 |
  a g e~ |
  e a b|
  a4 g8 d4.|
  r2 a'4 | % so
}
brVoiceCEndA = \relative c'' {
  % ... So
  a4 g e |
  a4 b a |
  g2. |
  d4 g fis8 g8 ~ |
}

%%% CHORD NAMES
brChordsTr = \chordmode {
  e2.:m
  g:aug
  g
  a
  c
  g
  d
}

%%% GUITAR
brGuitarTr = \relative c' {
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


%%%%%%%%%%%%%%%%%%%
% Overall structure
brChords = {
  \brChordsTr
}

brVoice = {
  \autoBeamOff
  \brVoiceIntro
  \keepWithTag \brVAFlavor \brVoiceVAa
  \keepWithTag \brVAFlavor \brVoiceVAb

  \brVoiceTr
  \keepWithTag \brCAFlavor \brVoiceCA
  \keepWithTag \brCBFlavor \brVoiceCB
  \brVoiceCEndA
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
  \brLyricsVB
  \brLyricsTr

  % Chorus
  \brLyricsCA
  \brLyricsCB
  \brLyricsCEndB
}

brGuitar = {
  \brGuitarTr
}

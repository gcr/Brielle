%%% SINGING VOICE
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
  d \tag #'preprod {d4 g8 }
    \tag #'release {g4 e8 }
    a8~ | % SO MANY TIES WHAT IS THIS I DON'T EVEN
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

%%% STRUCTURE
brVoice = {
  \autoBeamOff
  R2.*16 |
  \keepWithTag \brVAFlavor \brVoiceVAa
  \keepWithTag \brVAFlavor \brVoiceVAb

  \keepWithTag \brTrFlavor \brVoiceTrA
  \keepWithTag \brCAFlavor \brVoiceCA
  \keepWithTag \brCBFlavor \brVoiceCB
  \brVoiceCEndA
  g'2. | % HACK: tied with previous
  R2.*15
  \keepWithTag \brVBFlavor \brVoiceVB
  \keepWithTag \brTrFlavor \brVoiceTrB
  \keepWithTag \brCAFlavor \brVoiceCA
  \keepWithTag \brCBFlavor \brVoiceCB
  \keepWithTag \brCEndFlavor \brVoiceCEndB
  R2.*3 |
  \bar "|."
}

% vim: foldmethod=marker foldmarker={,}

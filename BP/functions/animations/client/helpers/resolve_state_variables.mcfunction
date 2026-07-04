# Convert the animation state score to a client usable Molang variable
execute unless score @s game.animation.state matches 1.. run playanimation @s animation.frog.croak null 0 "v.animation_state=0;return 1;" obj.artefact:animation_state_0
playanimation @s[scores={game.animation.state=1}]  animation.frog.croak null 0 "v.animation_state=1;return 1;" obj.artefact:animation_state_1
playanimation @s[scores={game.animation.state=2}]  animation.frog.croak null 0 "v.animation_state=2;return 1;" obj.artefact:animation_state_2
playanimation @s[scores={game.animation.state=3}]  animation.frog.croak null 0 "v.animation_state=3;return 1;" obj.artefact:animation_state_3
playanimation @s[scores={game.animation.state=4}]  animation.frog.croak null 0 "v.animation_state=4;return 1;" obj.artefact:animation_state_4
playanimation @s[scores={game.animation.state=5}]  animation.frog.croak null 0 "v.animation_state=4;return 1;" obj.artefact:animation_state_5
playanimation @s[scores={game.animation.state=6}]  animation.frog.croak null 0 "v.animation_state=4;return 1;" obj.artefact:animation_state_6
playanimation @s[scores={game.animation.state=7}]  animation.frog.croak null 0 "v.animation_state=4;return 1;" obj.artefact:animation_state_7
playanimation @s[scores={game.animation.state=8}]  animation.frog.croak null 0 "v.animation_state=4;return 1;" obj.artefact:animation_state_8
playanimation @s[scores={game.animation.state=9}]  animation.frog.croak null 0 "v.animation_state=4;return 1;" obj.artefact:animation_state_9
action_set_relative(0);
var __b__;
__b__ = action_if_variable(blow, 1, 0);
if __b__
{
{
global.blowing = 1;
{
action_set_relative(1);
action_effect(0, 0, 0, 1, 13986304, 0);
action_set_relative(0);
}
{
action_set_relative(1);
action_effect(1, 0, 0, 1, 16744448, 0);
action_set_relative(0);
}
action_sound(snd_explosion, 0);
blow = 0;
}
}
action_set_relative(0);

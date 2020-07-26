var __b__;
__b__ = action_if_variable(global.grenadeok, 0, 0);
if __b__
{
{
if (xstep = 600)
{
    global.grenadetl = "0:00";
    global.grenadeok = 1;
    xstep = 0;
}

if (xstep = 540)
{
    global.grenadetl = "0:01";
}

if (xstep = 480)
{
    global.grenadetl = "0:02";
}

if (xstep = 420)
{
    global.grenadetl = "0:03";
}

if (xstep = 360)
{
    global.grenadetl = "0:04";
}

if (xstep = 300)
{
    global.grenadetl = "0:05";
}

if (xstep = 240)
{
    global.grenadetl = "0:06";
}

if (xstep = 180)
{
    global.grenadetl = "0:07";
}

if (xstep = 120)
{
    global.grenadetl = "0:08";
}

if (xstep = 60)
{
    global.grenadetl = "0:09";
}

if ((xstep <= 59) && (global.grenadeok == 0))
{
    global.grenadetl = "0:10";
}

}
}
__b__ = action_if_variable(global.grenadeok, 1, 0);
if __b__
{
{
__b__ = action_if_variable(xstep, 59, 3);
if __b__
{
{
global.grenadetl = "OK";

}
}
}
}

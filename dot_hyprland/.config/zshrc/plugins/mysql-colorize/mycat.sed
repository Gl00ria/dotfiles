#!/usr/bin/env sed -f
s!^|!║!g;s!|$!║!g;s!|!│!g;
/^+/bp;b
:p x;/^╔/bm;/^╟/bl
:f x;s!^+!╔!;s!-!═!g;s!+$!╗!;s!+!╤!g;h;b
:m x;s!^+!╟!;s!-!─!g;s!+$!╢!;s!+!┼!g;h;b
:l x;s!^+!╚!;s!-!═!g;s!+$!╝!;s!+!╧!g;h;b

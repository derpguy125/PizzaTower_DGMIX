/// @description Insert description here
// You can write your code in this editor
global.panic = 0

rank = "S"

if global.collect >= global.srank then 
	rank = "S"
if global.collect >= global.arank and rank != "S" then
	rank = "A"
if global.collect >= global.brank and rank != "S" and rank != "A" then
	rank = "B"
if global.collect >= global.crank and rank != "S" and rank != "A" and rank != "B" then
	rank = "C"
if global.collect  < global.crank and rank != "S" and rank != "A" and rank != "B" and rank != "C" then
	rank = "D"
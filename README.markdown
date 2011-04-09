Home Enviromental Sensing
==============================
Copyright 2011 Luke Hovington

This is a project to sense temp, humid and maybe a few other enviromental varaibles


PLEASE NOTE
This is still a work in progress.
The board hasn't been tested,
nor is there any software for this yet.

USE AT OWN RISK


PCB NOTES
-------
Cut 3V3 into JP3
Route 3V3 into 3V3 U1 input (USB 5V not 3V3)

Cut I_SENSE/LIGHT/V1_EN
Route V1_EN -> I_SENSE MC (Micontroller Side)
Route I_SENSE -> V1_EN MC
Route ADC_EN -> LIGHT MC
Route LIGHT -> TP1 MC

Route L-BLU to MC (Missing Track)


LICENSE
-------
Licensed under the TAPR Open Hardware License (www.tapr.org/OHL).
The "license" folder within this repository also contains a copy of
this license in plain text format.

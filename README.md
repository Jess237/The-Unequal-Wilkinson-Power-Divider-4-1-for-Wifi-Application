# The-Unequal-Wilkinson-Power-Divider-4-1-for-Wifi-Application
The Unequal Wilkinson Power Divider 4:1  for Wifi Application (EE540 Project)
Objective:
Design WPD PCB with P2/P3 = 4 and center freq of 2.4 GHz with realistic value for Rint.

Additional figures of merit:
S21 BW Large
S23 and S32 small

Constraints:
Port impedences = 50 Ohm.
Wilkinson divider has by definition quarter wavelength sections.

Table of Contents:
PDiv: Schematic used to simulate microstrip from unaltered ADS template. 
PDiv1: Model with ideal TL components using M's values and formulas

Results:
Screenshots: 
11-24-2023
836 and 837 are of template design unaltered (logarithmic freq sweep)
838 and 839 frequency sweep and range adjusted to linear sweep with steps of 0.2 GHz, 1GHz - 3 GHz. Ports were named. 
840 component values screenshotted of WPD template to achieve results in 836-839
841 New schematic response (PDiv1) with ideal TL components using M's values.
846 PDiv1 and PDiv new plots added for baseline comparison with academic paper used as resource for this project; params for both sims unmodified.
847 PDiv1 (ideal TL model) with computed characteristic impedences


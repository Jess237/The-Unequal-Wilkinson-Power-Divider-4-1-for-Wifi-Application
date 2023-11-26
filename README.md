# The-Unequal-Wilkinson-Power-Divider-4-1-for-Wifi-Application
The Unequal Wilkinson Power Divider 4:1  for Wifi Application (EE540 Project)
Objective:
Design WPD PCB with P2/P3 = 4 and center freq of 2.4 GHz with realistic value for Rint.

Additional figures of merit (FOMs):
dB(S13) = -1 , and dB(S12) = -7 (80% power in one line, 20 % in the other line)
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


11-26-2023

846 PDiv1 and PDiv new plots added for baseline comparison with academic paper used as resource for this project; params for both sims unmodified.

847 PDiv1 (ideal TL model) with computed characteristic impedences
849 Microstrip parameters entered using some ADS sample values from ADS Power Divider sample pdf:

εr : 4.6 (I used 4)
Height (H) : 1.6 mm
Loss Tangent (TanD) : 0.0023
Metal Height (T) : 0.035 mm
Metal Conductivity (Cond) : 5.8E7 (Copper)
εr was maintained at 4 to be consistent with Matlab calcs. 4.4-4.6 would be realistic for FR4 @ 2.4Hz and line with sample pdf values. ADS Line calc was used to check impedence values given the widths and physical characteristics of the substrate and unfortunately the characteristic impedences and e_effective values did not line up with the matlab values.

850 PDiv1 ideal TL model with correct electrical lengths "E" from values computed in matlab. @ 2.4 GHz, dB(S13) = -2.911, and dB(S12) = -5.491 or 72.0% and 31.4% per screenshot 850

852 εr : 4.6 used to compare with screenshot 849
853 to replace 850 since axis markers did not appear

# NEI_Response
NEI_Responses of AIA and XRT

NEI_Response_20100613.sav : AIA and XRT responses of 2010 June 13 \
NEI_Response_20120127.sav : AIA and XRT responses of 2012 January 27

Saved variables
r_v807_nei: R(T, net, band), dblarr(301, 1000, 16) [cm^5 DN sec^-1 pix^-1] \
temp: 1.e5 - 1.e8, dblarr(301) [K] \
net: 1.8e8 - 3.e12, dblarr(1000) [cm^-3 sec] \
band: AIA & XRT passband, strarr(16) 

Example procedures to plot temperature response & characteristic timescale response \
resp_plot.pro : Plot temperature responses (ex. Left panel in Figure 3) \
resp_plot_vt.pro : Plot characteristic timescale responses (ex. Right panel in Figure 3) 

Example:

IDL>fname=‘NEI_Response_20120127.sav’ \
IDL>.run resp_plot \
IDL>.run resp_plot_vt 

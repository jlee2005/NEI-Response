restore, fname

loadct, 13
colors=[0,35,70,100,120,150,200,210,220,230,245,255]
snet=[0,50,100,200,400,600,800,999]
temp1=[100,120,150,180,200,230,250,270,280,290,295,300]

set_plot,'ps'
!p.thick=5
!x.thick=5
!y.thick=5
!p.charsize=1.2
!p.charthick=2
c_charsize=1.5
c_charthick=2

xrange=[net(0), net(999)]

for ib=0, 15 do begin
 
 device, filename='./github/resp_plot_vt_'+band(ib)+'.eps',/encapsul,/color,xsize=20,ysize=15

  for k=0, n_elements(temp1)-1 do begin
  if k eq 0 then plot, net, r_nei(temp1(k), *, ib), title=band(ib), line=k, $
  yrange=[1.e-29, 3.e-23], charsize=2,/ylog , color=colors(k), ytitle='cm!E5!X!NDN/s/pix', xtitle='n!De!Nt',/xstyle,/ystyle, xrange=xrange, /xlog else $
  oplot, net,r_nei(temp1(k), *, ib), line=k , color=colors(k)
  sdent='Temp='+string(temp(temp1(k)),format='(e7.1)')
  if ib lt 7 then begin
   if k lt 6 then xyouts, 2.e8, 1.8^k*0.12e-27, sdent, color=colors(k) else xyouts, 4.e9, 1.8^(k-6)*0.12e-27, sdent, color=colors(k)
  endif
  if ib ge 7 then begin
   if k lt 6 then xyouts, 2.e8, 1.8^k*0.12e-27, sdent, color=colors(k) else xyouts, 4.e9, 1.8^(k-6)*0.12e-27, sdent, color=colors(k)
  endif

  endfor ; k

 device,/close

endfor ; ib

!p.thick=1
!x.thick=1
!y.thick=1
!p.charsize=1
!p.charthick=1
c_charsize=1
c_charthick=1

set_plot,'x'

END

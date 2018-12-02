restore, fname

loadct, 13
colors=[0,35,70,100,120,180,230,255]
snet=[0,50,100,200,400,600,800,999]

ltemp=alog10(temp)

set_plot,'ps'
!p.thick=5
!x.thick=5
!y.thick=5
!p.charsize=1.2
!p.charthick=2
c_charsize=1.5
c_charthick=2

for ib=0, 15 do begin
 
 device, filename='./github/resp_plot_'+band(ib)+'.eps',/encapsul,/color,xsize=20,ysiz=15

  for k=0, n_elements(snet)-1 do begin
  if k eq 0 then plot, ltemp, r_nei(*, snet(k), ib), title=band(ib), line=k, $
  yrange=[1.e-29, 2.e-24], charsize=2,/ylog , color=colors(k), ytitle='cm!E5!X!NDN/s/pix', xtitle='Log(T)',/xstyle,/ystyle  else $
  oplot, ltemp,r_nei(*, snet(k), ib), line=k , color=colors(k)
;  print, ib, k
  sdent='n!De!Nt='+string(net(snet(k)),format='(e7.1)')
  xyouts, 5.2, 2.^k*0.2e-27, sdent, color=colors(k)

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

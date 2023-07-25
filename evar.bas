10 print "*** demo for extended variables ***"
15 print "first initialise the library"
20 gosub 8000:rem initialise
25 print "declare var1 and initialise to 138"
30 ev$="var1":ev=138:gosub 8200:rem declare
35 print "declare var2 and initialise to 400"
40 ev$="var2":ev=400:gosub 8200:rem declare
45 print "read and print var1 and var2"
50 ev$="var1":gosub 8300:print ev:rem read
60 ev$="var2":gosub 8300:print ev:rem read
65 print "assign new value to var2"
70 ev$="var2":ev=100:gosub 8400:rem write
75 print "read and print var2"
80 ev$="var2":gosub 8300:print ev:rem read
81 print "hit a key to continue"
82 get g$:if g$="" then 82
85 print "redeclare an evar with the same name (var2)"
90 ev$="var2":ev=700:gosub 8200:rem declare
95 print "read and print var2"
100 ev$="var2":gosub 8300:print ev:rem read
105 print "remove var2" 
110 ev$="var2":gosub 8500:rem remove
115 print "read and print the shadowed var2"
120 ev$="var2":gosub 8300:print ev:rem read
500 end


8000 print:print " +------------------------------------+
8005 print " ! this program is using the extended !"
8010 print " !      variables (evar) library      !"
8015 print " !            mit license             !"
8020 print " !copyright (c)2023 ir. marc dendooven!"
8030 print " +------------------------------------+"
8040 print
8060 rem --- system settings ---
8070 es=100:rem number of (e)vars
8100 rem -----------------------
8110 rem
8120 rem --- initialsation ---
8130 dim ev$(es-1),ev(es-1):ep=0
8190 rem ---------------------
8195 return

8200 rem *** declare evar ***
8210 if ep>=es then print "error:varstack exceeded":stop
8220 ev$(ep)=ev$:ev(ep)=ev:ep=ep+1
8230 return

8300 rem *** read evar ***
8310 i=ep
8320 if i=0 then print"error:no evar called ";ev$:stop
8330 i=i-1:if ev$(i)=ev$ then ev=ev(i):return
8340 goto 8320

8400 rem *** write evar ***
8410 i=ep
8420 if i=0 then print"error:no evar called ";ev$:stop
8430 i=i-1:if ev$(i)=ev$ then ev(i)=ev:return
8440 goto 8420

8500 rem *** remove evar ***
8510 i=ep
8520 if i=0 then print"error:no evar called ";ev$:stop
8530 i=i-1:if ev$(i)=ev$ then ev$(i)="":return
8540 goto 8520



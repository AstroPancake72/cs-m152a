# File saved with Nlview 7.5.8 2022-09-21 7111 VDI=41 GEI=38 GUI=JA:10.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #993366
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #0000ff
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #0000ff
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new top work:top:NOFILE -nosplit
load symbol RTL_INV work INV pin I0 input pin O output fillcolor 1
load symbol RTL_MUX work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_REG_SYNC__BREG_19 work GEN pin C input.clk.left pin CE input.left pin D input.left pin Q output.right pin SET input.bot fillcolor 1
load symbol RTL_ADD7 work RTL(+) pin I1 input.left pinBus I0 input.left [25:0] pinBus O output.right [23:0] fillcolor 1
load symbol RTL_GEQ0 work RTL(>=) pin O output.right pinBus I0 input.left [25:0] pinBus I1 input.left [25:0] fillcolor 1
load symbol clock_logic work:clock_logic:NOFILE HIERBOX pin adj_en input.left pin adj_sel input.left pin clk input.left pin pause input.left pin reset input.left pinBus m0 output.right [3:0] pinBus m1 output.right [3:0] pinBus s0 output.right [3:0] pinBus s1 output.right [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol debouncer work:abstract:NOFILE HIERBOX pin clean_out output.right pin clk input.left pin noisy_in input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol debouncer work:debouncer:NOFILE HIERBOX pin clean_out output.right pin clk input.left pin noisy_in input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX30 work MUX pin S input.bot pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus O output.right [3:0] fillcolor 1
load symbol RTL_AND work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol sseg_driver work:sseg_driver:NOFILE HIERBOX pin clk input.left pinBus an output.right [3:0] pinBus d0 input.left [3:0] pinBus d1 input.left [3:0] pinBus d2 input.left [3:0] pinBus d3 input.left [3:0] pinBus seg output.right [6:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REG_SYNC__BREG_3 work[25:0]swws GEN pin C input.clk.left pinBus D input.left [25:0] pinBus Q output.right [25:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 26
load symbol RTL_ROM work GEN pin O output.right pinBus A input.left [19:0] fillcolor 1
load symbol RTL_REG__BREG_4 work GEN pin C input.clk.left pin CE input.left pin D input.left pin Q output.right fillcolor 1
load symbol RTL_ADD work RTL(+) pin I1 input.left pinBus I0 input.left [19:0] pinBus O output.right [19:0] fillcolor 1
load symbol RTL_EQ work RTL(=) pin I0 input.left pin I1 input.left pin O output.right fillcolor 1
load symbol RTL_REG__BREG_1 work GEN pin C input.clk.left pin D input.left pin Q output.right fillcolor 1
load symbol RTL_REG_SYNC__BREG_3 work[19:0]swws GEN pin C input.clk.left pinBus D input.left [19:0] pinBus Q output.right [19:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 20
load symbol RTL_MUX28 work MUX pinBus I0 input.left [3:0] pinBus I1 input.left [3:0] pinBus I2 input.left [3:0] pinBus I3 input.left [3:0] pinBus O output.right [3:0] pinBus S input.bot [1:0] fillcolor 1
load symbol RTL_ADD6 work RTL(+) pin I1 input.left pinBus I0 input.left [17:0] pinBus O output.right [17:0] fillcolor 1
load symbol RTL_ROM3 work GEN pinBus A input.left [3:0] pinBus O output.right [6:0] fillcolor 1
load symbol RTL_REG__BREG_1 work[17:0]sww GEN pin C input.clk.left pinBus D input.left [17:0] pinBus Q output.right [17:0] fillcolor 1 sandwich 3 prop @bundle 18
load port btnC input -pg 1 -lvl 0 -x 0 -y 590
load port btnL input -pg 1 -lvl 0 -x 0 -y 700
load port clk input -pg 1 -lvl 0 -x 0 -y 270
load port dp output -pg 1 -lvl 9 -x 4720 -y 200
load portBus an output [3:0] -attr @name an[3:0] -pg 1 -lvl 9 -x 4720 -y 520
load portBus seg output [6:0] -attr @name seg[6:0] -pg 1 -lvl 9 -x 4720 -y 540
load portBus sw input [1:0] -attr @name sw[1:0] -pg 1 -lvl 0 -x 0 -y 150
load inst blink_state0_i RTL_INV work -attr @cell(#000000) RTL_INV -pinAttr I0 @attr {FO=1, SL=N/A} -pinAttr O @attr {FO=3, SL=N/A} -pg 1 -lvl 5 -x 1780 -y 260
load inst blink_state_i RTL_MUX work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr {FO=33, SL=N/A, S=1'b0} -pinAttr I1 @attr {FO=16, SL=N/A, S=default} -pinAttr O @attr {FO=1, SL=N/A} -pinAttr S @attr {FO=9, SL=N/A} -pg 1 -lvl 3 -x 1080 -y 360
load inst blink_state_reg RTL_REG_SYNC__BREG_19 work -attr @cell(#000000) RTL_REG_SYNC -pinAttr C @attr {FO=162, SL=N/A} -pinAttr CE @attr {FO=2, SL=N/A} -pinAttr D @attr {FO=3, SL=N/A} -pinAttr Q @attr {FO=1, SL=N/A} -pinAttr SET @attr {FO=1, SL=N/A} -pg 1 -lvl 4 -x 1410 -y 260
load inst blink_ticker0_i RTL_ADD7 work -attr @cell(#000000) RTL_ADD -pinAttr I1 @attr {FO=33, SL=N/A} -pinBusAttr I0 @name I0[25:0] -pinBusAttr I0 @attr {FO=2, SL=N/A} -pinBusAttr O @name O[23:0] -pinBusAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 1 -x 230 -y 220
load inst blink_ticker0_i__0 RTL_GEQ0 work -attr @cell(#000000) RTL_GEQ -pinAttr O @attr {FO=2, SL=N/A} -pinBusAttr I0 @name I0[25:0] -pinBusAttr I0 @attr {FO=2, SL=N/A} -pinBusAttr I1 @name I1[25:0] -pinBusAttr I1 @attr FO=33,\ V=X\"0FE502B\",\ SL=N/A -pg 1 -lvl 3 -x 1080 -y 260
load inst blink_ticker_i RTL_MUX work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr {FO=33, SL=N/A, S=1'b0} -pinAttr I1 @attr {FO=2, SL=N/A, S=default} -pinAttr O @attr {FO=26, SL=N/A} -pinAttr S @attr {FO=9, SL=N/A} -pg 1 -lvl 1 -x 230 -y 90
load inst core clock_logic work:clock_logic:NOFILE -autohide -attr @cell(#000000) clock_logic -pinAttr adj_en @attr SL=N/A -pinAttr adj_sel @attr SL=N/A -pinAttr clk @attr SL=N/A -pinAttr pause @attr SL=N/A -pinAttr reset @attr SL=N/A -pinBusAttr m0 @name m0[3:0] -pinBusAttr m0 @attr SL=N/A -pinBusAttr m1 @name m1[3:0] -pinBusAttr m1 @attr SL=N/A -pinBusAttr s0 @name s0[3:0] -pinBusAttr s0 @attr SL=N/A -pinBusAttr s1 @name s1[3:0] -pinBusAttr s1 @attr SL=N/A -pg 1 -lvl 6 -x 2160 -y 570
load inst db_ps debouncer work:abstract:NOFILE -autohide -attr @cell(#000000) debouncer -pinAttr clean_out @attr SL=N/A -pinAttr clk @attr SL=N/A -pinAttr noisy_in @attr SL=N/A -pg 1 -lvl 5 -x 1780 -y 670
load inst db_rst debouncer work:debouncer:NOFILE -fold -autohide -attr @cell(#000000) debouncer -attr @fillcolor #dfebf8 -pinAttr clean_out @attr SL=N/A -pinAttr clk @attr SL=N/A -pinAttr noisy_in @attr SL=N/A -pg 1 -lvl 5 -x 1780 -y 560
load inst disp_m0_i RTL_MUX30 work -attr @cell(#000000) RTL_MUX -pinAttr S @attr {FO=2, SL=N/A} -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr {FO=33, SL=N/A, S=1'b1} -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr {FO=4, SL=N/A, S=default} -pinBusAttr O @name O[3:0] -pinBusAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2630 -y 440
load inst disp_m11_i RTL_AND work -attr @cell(#000000) RTL_AND -pinAttr I0 @attr {FO=1, SL=N/A} -pinAttr I1 @attr {FO=3, SL=N/A} -pinAttr O @attr {FO=2, SL=N/A} -pg 1 -lvl 6 -x 2160 -y 470
load inst disp_m12_i RTL_AND work -attr @cell(#000000) RTL_AND -pinAttr I0 @attr {FO=9, SL=N/A} -pinAttr I1 @attr {FO=6, SL=N/A} -pinAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 5 -x 1780 -y 460
load inst disp_m1_i RTL_MUX30 work -attr @cell(#000000) RTL_MUX -pinAttr S @attr {FO=2, SL=N/A} -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr {FO=33, SL=N/A, S=1'b1} -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr {FO=3, SL=N/A, S=default} -pinBusAttr O @name O[3:0] -pinBusAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2630 -y 580
load inst disp_s0_i RTL_MUX30 work -attr @cell(#000000) RTL_MUX -pinAttr S @attr {FO=2, SL=N/A} -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr {FO=33, SL=N/A, S=1'b1} -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr {FO=6, SL=N/A, S=default} -pinBusAttr O @name O[3:0] -pinBusAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2630 -y 320
load inst disp_s11_i RTL_AND work -attr @cell(#000000) RTL_AND -pinAttr I0 @attr {FO=1, SL=N/A} -pinAttr I1 @attr {FO=3, SL=N/A} -pinAttr O @attr {FO=2, SL=N/A} -pg 1 -lvl 6 -x 2160 -y 400
load inst disp_s12_i RTL_AND work -attr @cell(#000000) RTL_AND -pinAttr I0 @attr {FO=9, SL=N/A} -pinAttr I1 @attr {FO=1, SL=N/A} -pinAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 5 -x 1780 -y 390
load inst disp_s13_i RTL_INV work -attr @cell(#000000) RTL_INV -pinAttr I0 @attr {FO=6, SL=N/A} -pinAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 4 -x 1410 -y 420
load inst disp_s1_i RTL_MUX30 work -attr @cell(#000000) RTL_MUX -pinAttr S @attr {FO=2, SL=N/A} -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr {FO=33, SL=N/A, S=1'b1} -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr {FO=5, SL=N/A, S=default} -pinBusAttr O @name O[3:0] -pinBusAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2630 -y 700
load inst display sseg_driver work:sseg_driver:NOFILE -autohide -attr @cell(#000000) sseg_driver -attr @fillcolor #fafafa -pinAttr clk @attr SL=N/A -pinBusAttr an @name an[3:0] -pinBusAttr an @attr SL=N/A -pinBusAttr d0 @name d0[3:0] -pinBusAttr d0 @attr SL=N/A -pinBusAttr d1 @name d1[3:0] -pinBusAttr d1 @attr SL=N/A -pinBusAttr d2 @name d2[3:0] -pinBusAttr d2 @attr SL=N/A -pinBusAttr d3 @name d3[3:0] -pinBusAttr d3 @attr SL=N/A -pinBusAttr seg @name seg[6:0] -pinBusAttr seg @attr SL=N/A -pg 1 -lvl 8 -x 3000 -y 498
load inst blink_ticker_reg[25:0] RTL_REG_SYNC__BREG_3 work[25:0]swws -attr @cell(#000000) RTL_REG_SYNC -pinAttr C @attr {FO=162, SL=N/A} -pinBusAttr D @attr {FO=16, SL=N/A} -pinBusAttr Q @attr {FO=2, SL=N/A} -pinAttr RST @attr {FO=26, SL=N/A} -pg 1 -lvl 2 -x 590 -y 280
load inst db_rst|clean_out_i RTL_ROM work -hier db_rst -attr @cell(#000000) RTL_ROM -attr @name clean_out_i -pinAttr O @attr {FO=1, SL=N/A} -pinBusAttr A @name A[19:0] -pinBusAttr A @attr {FO=2, SL=N/A} -pg 1 -lvl 5 -x 3140 -y 628
load inst db_rst|clean_out_i__0 RTL_MUX work -hier db_rst -attr @cell(#000000) RTL_MUX -attr @name clean_out_i__0 -pinAttr I0 @attr {FO=1, SL=N/A, S=1'b1} -pinAttr I1 @attr {FO=1, SL=N/A, S=default} -pinAttr O @attr {FO=1, SL=N/A} -pinAttr S @attr {FO=21, SL=N/A} -pg 1 -lvl 6 -x 3520 -y 618
load inst db_rst|clean_out_reg RTL_REG__BREG_4 work -hier db_rst -attr @cell(#000000) RTL_REG -attr @name clean_out_reg -pinAttr C @attr {FO=162, SL=N/A} -pinAttr CE @attr {FO=1, SL=N/A} -pinAttr D @attr {FO=2, SL=N/A} -pinAttr Q @attr {FO=20, SL=N/A} -pg 1 -lvl 7 -x 3790 -y 798
load inst db_rst|count0_i RTL_ADD work -hier db_rst -attr @cell(#000000) RTL_ADD -attr @name count0_i -pinAttr I1 @attr {FO=1, SL=N/A} -pinBusAttr I0 @name I0[19:0] -pinBusAttr I0 @attr {FO=2, SL=N/A} -pinBusAttr O @name O[19:0] -pinBusAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 3 -x 2520 -y 648
load inst db_rst|count0_i__0 RTL_EQ work -hier db_rst -attr @cell(#000000) RTL_EQ -attr @name count0_i__0 -pinAttr I0 @attr {FO=2, SL=N/A} -pinAttr I1 @attr {FO=20, SL=N/A} -pinAttr O @attr {FO=21, SL=N/A} -pg 1 -lvl 3 -x 2520 -y 748
load inst db_rst|sync_0_reg RTL_REG__BREG_1 work -hier db_rst -attr @cell(#000000) RTL_REG -attr @name sync_0_reg -pinAttr C @attr {FO=162, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pinAttr Q @attr {FO=1, SL=N/A} -pg 1 -lvl 1 -x 1920 -y 748
load inst db_rst|sync_1_reg RTL_REG__BREG_1 work -hier db_rst -attr @cell(#000000) RTL_REG -attr @name sync_1_reg -pinAttr C @attr {FO=162, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pinAttr Q @attr {FO=2, SL=N/A} -pg 1 -lvl 2 -x 2190 -y 738
load inst db_rst|count_reg[19:0] RTL_REG_SYNC__BREG_3 work[19:0]swws -hier db_rst -attr @cell(#000000) RTL_REG_SYNC -attr @name count_reg[19:0] -pinAttr C @attr {FO=162, SL=N/A} -pinBusAttr D @attr {FO=1, SL=N/A} -pinBusAttr Q @attr {FO=2, SL=N/A} -pinAttr RST @attr {FO=21, SL=N/A} -pg 1 -lvl 4 -x 2860 -y 638
load inst display|an_i RTL_MUX28 work -hier display -attr @cell(#000000) RTL_MUX -attr @name an_i -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr FO=13,\ V=B\"1110\",\ SL=N/A,\ S=2'b00 -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr FO=13,\ V=B\"1101\",\ SL=N/A,\ S=2'b01 -pinBusAttr I2 @name I2[3:0] -pinBusAttr I2 @attr FO=13,\ V=B\"1011\",\ SL=N/A,\ S=2'b10 -pinBusAttr I3 @name I3[3:0] -pinBusAttr I3 @attr FO=13,\ V=B\"0111\",\ SL=N/A,\ S=2'b11 -pinBusAttr O @name O[3:0] -pinBusAttr O @attr {FO=1, SL=N/A} -pinBusAttr S @name S[1:0] -pinBusAttr S @attr {FO=3, SL=N/A} -pg 1 -lvl 4 -x 4330 -y 558
load inst display|bcd_i RTL_MUX28 work -hier display -attr @cell(#000000) RTL_MUX -attr @name bcd_i -pinBusAttr I0 @name I0[3:0] -pinBusAttr I0 @attr {FO=1, SL=N/A, S=2'b00} -pinBusAttr I1 @name I1[3:0] -pinBusAttr I1 @attr {FO=1, SL=N/A, S=2'b01} -pinBusAttr I2 @name I2[3:0] -pinBusAttr I2 @attr {FO=1, SL=N/A, S=2'b10} -pinBusAttr I3 @name I3[3:0] -pinBusAttr I3 @attr {FO=1, SL=N/A, S=2'b11} -pinBusAttr O @name O[3:0] -pinBusAttr O @attr {FO=1, SL=N/A} -pinBusAttr S @name S[1:0] -pinBusAttr S @attr {FO=3, SL=N/A} -pg 1 -lvl 3 -x 3860 -y 668
load inst display|refresh_counter0_i RTL_ADD6 work -hier display -attr @cell(#000000) RTL_ADD -attr @name refresh_counter0_i -pinAttr I1 @attr {FO=13, SL=N/A} -pinBusAttr I0 @name I0[17:0] -pinBusAttr I0 @attr {FO=3, SL=N/A} -pinBusAttr O @name O[17:0] -pinBusAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 1 -x 3180 -y 578
load inst display|seg_i RTL_ROM3 work -hier display -attr @cell(#000000) RTL_ROM -attr @name seg_i -pinBusAttr A @name A[3:0] -pinBusAttr A @attr {FO=1, SL=N/A} -pinBusAttr O @name O[6:0] -pinBusAttr O @attr {FO=1, SL=N/A} -pg 1 -lvl 4 -x 4330 -y 698
load inst display|refresh_counter_reg[17:0] RTL_REG__BREG_1 work[17:0]sww -hier display -attr @cell(#000000) RTL_REG -attr @name refresh_counter_reg[17:0] -pinAttr C @attr {FO=162, SL=N/A} -pinBusAttr D @attr {FO=1, SL=N/A} -pinBusAttr Q @attr {FO=3, SL=N/A} -pg 1 -lvl 2 -x 3480 -y 568
load net <const0> -ground -pin blink_state_i I1 -pin blink_ticker0_i__0 I1[25] -pin blink_ticker0_i__0 I1[24] -pin blink_ticker0_i__0 I1[16] -pin blink_ticker0_i__0 I1[15] -pin blink_ticker0_i__0 I1[13] -pin blink_ticker0_i__0 I1[11] -pin blink_ticker0_i__0 I1[10] -pin blink_ticker0_i__0 I1[9] -pin blink_ticker0_i__0 I1[8] -pin blink_ticker0_i__0 I1[7] -pin blink_ticker0_i__0 I1[6] -pin blink_ticker0_i__0 I1[4] -pin blink_ticker0_i__0 I1[2] -pin blink_ticker_reg[25:0] D[25] -pin blink_ticker_reg[25:0] D[24]
load net <const1> -power -pin blink_state_i I0 -pin blink_ticker0_i I1 -pin blink_ticker0_i__0 I1[23] -pin blink_ticker0_i__0 I1[22] -pin blink_ticker0_i__0 I1[21] -pin blink_ticker0_i__0 I1[20] -pin blink_ticker0_i__0 I1[19] -pin blink_ticker0_i__0 I1[18] -pin blink_ticker0_i__0 I1[17] -pin blink_ticker0_i__0 I1[14] -pin blink_ticker0_i__0 I1[12] -pin blink_ticker0_i__0 I1[5] -pin blink_ticker0_i__0 I1[3] -pin blink_ticker0_i__0 I1[1] -pin blink_ticker0_i__0 I1[0] -pin blink_ticker_i I0 -pin disp_m0_i I0[3] -pin disp_m0_i I0[2] -pin disp_m0_i I0[1] -pin disp_m0_i I0[0] -pin disp_m1_i I0[3] -pin disp_m1_i I0[2] -pin disp_m1_i I0[1] -pin disp_m1_i I0[0] -pin disp_s0_i I0[3] -pin disp_s0_i I0[2] -pin disp_s0_i I0[1] -pin disp_s0_i I0[0] -pin disp_s1_i I0[3] -pin disp_s1_i I0[2] -pin disp_s1_i I0[1] -pin disp_s1_i I0[0] -port dp
load net an[0] -attr @rip an[0] -port an[0] -pin display an[0]
load net an[1] -attr @rip an[1] -port an[1] -pin display an[1]
load net an[2] -attr @rip an[2] -port an[2] -pin display an[2]
load net an[3] -attr @rip an[3] -port an[3] -pin display an[3]
load net blink_state -pin blink_state0_i I0 -pin blink_state_reg Q
netloc blink_state 1 4 1 NJ 260
load net blink_state__0 -pin blink_state_i O -pin blink_state_reg SET
netloc blink_state__0 1 3 1 1250 340n
load net blink_ticker0 -pin blink_state_reg CE -pin blink_ticker0_i__0 O -pin blink_ticker_i I1
netloc blink_ticker0 1 0 4 40 10 NJ 10 NJ 10 1250
load net blink_ticker0_i_n_0 -attr @rip O[23] -pin blink_ticker0_i O[23] -pin blink_ticker_reg[25:0] D[23]
load net blink_ticker0_i_n_1 -attr @rip O[22] -pin blink_ticker0_i O[22] -pin blink_ticker_reg[25:0] D[22]
load net blink_ticker0_i_n_10 -attr @rip O[13] -pin blink_ticker0_i O[13] -pin blink_ticker_reg[25:0] D[13]
load net blink_ticker0_i_n_11 -attr @rip O[12] -pin blink_ticker0_i O[12] -pin blink_ticker_reg[25:0] D[12]
load net blink_ticker0_i_n_12 -attr @rip O[11] -pin blink_ticker0_i O[11] -pin blink_ticker_reg[25:0] D[11]
load net blink_ticker0_i_n_13 -attr @rip O[10] -pin blink_ticker0_i O[10] -pin blink_ticker_reg[25:0] D[10]
load net blink_ticker0_i_n_14 -attr @rip O[9] -pin blink_ticker0_i O[9] -pin blink_ticker_reg[25:0] D[9]
load net blink_ticker0_i_n_15 -attr @rip O[8] -pin blink_ticker0_i O[8] -pin blink_ticker_reg[25:0] D[8]
load net blink_ticker0_i_n_16 -attr @rip O[7] -pin blink_ticker0_i O[7] -pin blink_ticker_reg[25:0] D[7]
load net blink_ticker0_i_n_17 -attr @rip O[6] -pin blink_ticker0_i O[6] -pin blink_ticker_reg[25:0] D[6]
load net blink_ticker0_i_n_18 -attr @rip O[5] -pin blink_ticker0_i O[5] -pin blink_ticker_reg[25:0] D[5]
load net blink_ticker0_i_n_19 -attr @rip O[4] -pin blink_ticker0_i O[4] -pin blink_ticker_reg[25:0] D[4]
load net blink_ticker0_i_n_2 -attr @rip O[21] -pin blink_ticker0_i O[21] -pin blink_ticker_reg[25:0] D[21]
load net blink_ticker0_i_n_20 -attr @rip O[3] -pin blink_ticker0_i O[3] -pin blink_ticker_reg[25:0] D[3]
load net blink_ticker0_i_n_21 -attr @rip O[2] -pin blink_ticker0_i O[2] -pin blink_ticker_reg[25:0] D[2]
load net blink_ticker0_i_n_22 -attr @rip O[1] -pin blink_ticker0_i O[1] -pin blink_ticker_reg[25:0] D[1]
load net blink_ticker0_i_n_23 -attr @rip O[0] -pin blink_ticker0_i O[0] -pin blink_ticker_reg[25:0] D[0]
load net blink_ticker0_i_n_3 -attr @rip O[20] -pin blink_ticker0_i O[20] -pin blink_ticker_reg[25:0] D[20]
load net blink_ticker0_i_n_4 -attr @rip O[19] -pin blink_ticker0_i O[19] -pin blink_ticker_reg[25:0] D[19]
load net blink_ticker0_i_n_5 -attr @rip O[18] -pin blink_ticker0_i O[18] -pin blink_ticker_reg[25:0] D[18]
load net blink_ticker0_i_n_6 -attr @rip O[17] -pin blink_ticker0_i O[17] -pin blink_ticker_reg[25:0] D[17]
load net blink_ticker0_i_n_7 -attr @rip O[16] -pin blink_ticker0_i O[16] -pin blink_ticker_reg[25:0] D[16]
load net blink_ticker0_i_n_8 -attr @rip O[15] -pin blink_ticker0_i O[15] -pin blink_ticker_reg[25:0] D[15]
load net blink_ticker0_i_n_9 -attr @rip O[14] -pin blink_ticker0_i O[14] -pin blink_ticker_reg[25:0] D[14]
load net blink_ticker[0] -attr @rip 0 -pin blink_ticker0_i I0[0] -pin blink_ticker0_i__0 I0[0] -pin blink_ticker_reg[25:0] Q[0]
load net blink_ticker[10] -attr @rip 10 -pin blink_ticker0_i I0[10] -pin blink_ticker0_i__0 I0[10] -pin blink_ticker_reg[25:0] Q[10]
load net blink_ticker[11] -attr @rip 11 -pin blink_ticker0_i I0[11] -pin blink_ticker0_i__0 I0[11] -pin blink_ticker_reg[25:0] Q[11]
load net blink_ticker[12] -attr @rip 12 -pin blink_ticker0_i I0[12] -pin blink_ticker0_i__0 I0[12] -pin blink_ticker_reg[25:0] Q[12]
load net blink_ticker[13] -attr @rip 13 -pin blink_ticker0_i I0[13] -pin blink_ticker0_i__0 I0[13] -pin blink_ticker_reg[25:0] Q[13]
load net blink_ticker[14] -attr @rip 14 -pin blink_ticker0_i I0[14] -pin blink_ticker0_i__0 I0[14] -pin blink_ticker_reg[25:0] Q[14]
load net blink_ticker[15] -attr @rip 15 -pin blink_ticker0_i I0[15] -pin blink_ticker0_i__0 I0[15] -pin blink_ticker_reg[25:0] Q[15]
load net blink_ticker[16] -attr @rip 16 -pin blink_ticker0_i I0[16] -pin blink_ticker0_i__0 I0[16] -pin blink_ticker_reg[25:0] Q[16]
load net blink_ticker[17] -attr @rip 17 -pin blink_ticker0_i I0[17] -pin blink_ticker0_i__0 I0[17] -pin blink_ticker_reg[25:0] Q[17]
load net blink_ticker[18] -attr @rip 18 -pin blink_ticker0_i I0[18] -pin blink_ticker0_i__0 I0[18] -pin blink_ticker_reg[25:0] Q[18]
load net blink_ticker[19] -attr @rip 19 -pin blink_ticker0_i I0[19] -pin blink_ticker0_i__0 I0[19] -pin blink_ticker_reg[25:0] Q[19]
load net blink_ticker[1] -attr @rip 1 -pin blink_ticker0_i I0[1] -pin blink_ticker0_i__0 I0[1] -pin blink_ticker_reg[25:0] Q[1]
load net blink_ticker[20] -attr @rip 20 -pin blink_ticker0_i I0[20] -pin blink_ticker0_i__0 I0[20] -pin blink_ticker_reg[25:0] Q[20]
load net blink_ticker[21] -attr @rip 21 -pin blink_ticker0_i I0[21] -pin blink_ticker0_i__0 I0[21] -pin blink_ticker_reg[25:0] Q[21]
load net blink_ticker[22] -attr @rip 22 -pin blink_ticker0_i I0[22] -pin blink_ticker0_i__0 I0[22] -pin blink_ticker_reg[25:0] Q[22]
load net blink_ticker[23] -attr @rip 23 -pin blink_ticker0_i I0[23] -pin blink_ticker0_i__0 I0[23] -pin blink_ticker_reg[25:0] Q[23]
load net blink_ticker[24] -attr @rip 24 -pin blink_ticker0_i I0[24] -pin blink_ticker0_i__0 I0[24] -pin blink_ticker_reg[25:0] Q[24]
load net blink_ticker[25] -attr @rip 25 -pin blink_ticker0_i I0[25] -pin blink_ticker0_i__0 I0[25] -pin blink_ticker_reg[25:0] Q[25]
load net blink_ticker[2] -attr @rip 2 -pin blink_ticker0_i I0[2] -pin blink_ticker0_i__0 I0[2] -pin blink_ticker_reg[25:0] Q[2]
load net blink_ticker[3] -attr @rip 3 -pin blink_ticker0_i I0[3] -pin blink_ticker0_i__0 I0[3] -pin blink_ticker_reg[25:0] Q[3]
load net blink_ticker[4] -attr @rip 4 -pin blink_ticker0_i I0[4] -pin blink_ticker0_i__0 I0[4] -pin blink_ticker_reg[25:0] Q[4]
load net blink_ticker[5] -attr @rip 5 -pin blink_ticker0_i I0[5] -pin blink_ticker0_i__0 I0[5] -pin blink_ticker_reg[25:0] Q[5]
load net blink_ticker[6] -attr @rip 6 -pin blink_ticker0_i I0[6] -pin blink_ticker0_i__0 I0[6] -pin blink_ticker_reg[25:0] Q[6]
load net blink_ticker[7] -attr @rip 7 -pin blink_ticker0_i I0[7] -pin blink_ticker0_i__0 I0[7] -pin blink_ticker_reg[25:0] Q[7]
load net blink_ticker[8] -attr @rip 8 -pin blink_ticker0_i I0[8] -pin blink_ticker0_i__0 I0[8] -pin blink_ticker_reg[25:0] Q[8]
load net blink_ticker[9] -attr @rip 9 -pin blink_ticker0_i I0[9] -pin blink_ticker0_i__0 I0[9] -pin blink_ticker_reg[25:0] Q[9]
load net blink_ticker__0 -pin blink_ticker_i O -pin blink_ticker_reg[25:0] RST
netloc blink_ticker__0 1 1 1 460 90n
load net btnC -port btnC -pin db_rst noisy_in
netloc btnC 1 0 5 NJ 590 NJ 590 NJ 590 NJ 590 NJ
load net btnL -port btnL -pin db_ps noisy_in
netloc btnL 1 0 5 NJ 700 NJ 700 NJ 700 NJ 700 NJ
load net clk -pin blink_state_reg C -pin blink_ticker_reg[25:0] C -port clk -pin core clk -pin db_ps clk -pin db_rst clk -pin display clk
netloc clk 1 0 8 NJ 270 440 190 NJ 190 1270 360 1630 340 2020 520 NJ 520 2840
load net disp_m0[0] -attr @rip O[0] -pin disp_m0_i O[0] -pin display d2[0]
load net disp_m0[1] -attr @rip O[1] -pin disp_m0_i O[1] -pin display d2[1]
load net disp_m0[2] -attr @rip O[2] -pin disp_m0_i O[2] -pin display d2[2]
load net disp_m0[3] -attr @rip O[3] -pin disp_m0_i O[3] -pin display d2[3]
load net disp_m11 -pin disp_m0_i S -pin disp_m11_i O -pin disp_m1_i S
netloc disp_m11 1 6 1 2380 470n
load net disp_m12 -pin disp_m11_i I0 -pin disp_m12_i O
netloc disp_m12 1 5 1 NJ 460
load net disp_m1[0] -attr @rip O[0] -pin disp_m1_i O[0] -pin display d3[0]
load net disp_m1[1] -attr @rip O[1] -pin disp_m1_i O[1] -pin display d3[1]
load net disp_m1[2] -attr @rip O[2] -pin disp_m1_i O[2] -pin display d3[2]
load net disp_m1[3] -attr @rip O[3] -pin disp_m1_i O[3] -pin display d3[3]
load net disp_s0[0] -attr @rip O[0] -pin disp_s0_i O[0] -pin display d0[0]
load net disp_s0[1] -attr @rip O[1] -pin disp_s0_i O[1] -pin display d0[1]
load net disp_s0[2] -attr @rip O[2] -pin disp_s0_i O[2] -pin display d0[2]
load net disp_s0[3] -attr @rip O[3] -pin disp_s0_i O[3] -pin display d0[3]
load net disp_s11 -pin disp_s0_i S -pin disp_s11_i O -pin disp_s1_i S
netloc disp_s11 1 6 1 2400 380n
load net disp_s12 -pin disp_s11_i I0 -pin disp_s12_i O
netloc disp_s12 1 5 1 N 390
load net disp_s13 -pin disp_s12_i I1 -pin disp_s13_i O
netloc disp_s13 1 4 1 1650 400n
load net disp_s1[0] -attr @rip O[0] -pin disp_s1_i O[0] -pin display d1[0]
load net disp_s1[1] -attr @rip O[1] -pin disp_s1_i O[1] -pin display d1[1]
load net disp_s1[2] -attr @rip O[2] -pin disp_s1_i O[2] -pin display d1[2]
load net disp_s1[3] -attr @rip O[3] -pin disp_s1_i O[3] -pin display d1[3]
load net m0[0] -attr @rip m0[0] -pin core m0[0] -pin disp_m0_i I1[0]
load net m0[1] -attr @rip m0[1] -pin core m0[1] -pin disp_m0_i I1[1]
load net m0[2] -attr @rip m0[2] -pin core m0[2] -pin disp_m0_i I1[2]
load net m0[3] -attr @rip m0[3] -pin core m0[3] -pin disp_m0_i I1[3]
load net m1[0] -attr @rip m1[0] -pin core m1[0] -pin disp_m1_i I1[0]
load net m1[1] -attr @rip m1[1] -pin core m1[1] -pin disp_m1_i I1[1]
load net m1[2] -attr @rip m1[2] -pin core m1[2] -pin disp_m1_i I1[2]
load net m1[3] -attr @rip m1[3] -pin core m1[3] -pin disp_m1_i I1[3]
load net p_2_in -pin blink_state0_i O -pin blink_state_reg D -pin disp_m11_i I1 -pin disp_s11_i I1
netloc p_2_in 1 3 3 1290 190 NJ 190 2040
load net pause -pin core pause -pin db_ps clean_out
netloc pause 1 5 1 2040 640n
load net rst -pin core reset -pin db_rst clean_out
netloc rst 1 5 1 1980 570n
load net s0[0] -attr @rip s0[0] -pin core s0[0] -pin disp_s0_i I1[0]
load net s0[1] -attr @rip s0[1] -pin core s0[1] -pin disp_s0_i I1[1]
load net s0[2] -attr @rip s0[2] -pin core s0[2] -pin disp_s0_i I1[2]
load net s0[3] -attr @rip s0[3] -pin core s0[3] -pin disp_s0_i I1[3]
load net s1[0] -attr @rip s1[0] -pin core s1[0] -pin disp_s1_i I1[0]
load net s1[1] -attr @rip s1[1] -pin core s1[1] -pin disp_s1_i I1[1]
load net s1[2] -attr @rip s1[2] -pin core s1[2] -pin disp_s1_i I1[2]
load net s1[3] -attr @rip s1[3] -pin core s1[3] -pin disp_s1_i I1[3]
load net seg[0] -attr @rip seg[0] -pin display seg[0] -port seg[0]
load net seg[1] -attr @rip seg[1] -pin display seg[1] -port seg[1]
load net seg[2] -attr @rip seg[2] -pin display seg[2] -port seg[2]
load net seg[3] -attr @rip seg[3] -pin display seg[3] -port seg[3]
load net seg[4] -attr @rip seg[4] -pin display seg[4] -port seg[4]
load net seg[5] -attr @rip seg[5] -pin display seg[5] -port seg[5]
load net seg[6] -attr @rip seg[6] -pin display seg[6] -port seg[6]
load net sw[0] -attr @rip sw[0] -pin core adj_sel -pin disp_m12_i I1 -pin disp_s13_i I0 -port sw[0]
load net sw[1] -attr @rip sw[1] -pin blink_state_i S -pin blink_ticker_i S -pin core adj_en -pin disp_m12_i I0 -pin disp_s12_i I0 -port sw[1]
load net db_rst|<const0> -ground -attr @name <const0> -pin db_rst|clean_out_i__0 I0
load net db_rst|<const1> -power -attr @name <const1> -pin db_rst|count0_i I1
load net db_rst|clean_out -attr @name clean_out -hierPin db_rst clean_out -pin db_rst|clean_out_reg Q -pin db_rst|count0_i__0 I1
netloc db_rst|clean_out 1 2 6 2370 698 2730J 708 NJ 708 NJ 708 NJ 708 3950
load net db_rst|clean_out_i__0_n_0 -attr @name clean_out_i__0_n_0 -pin db_rst|clean_out_i__0 O -pin db_rst|clean_out_reg CE
netloc db_rst|clean_out_i__0_n_0 1 6 1 3680 618n
load net db_rst|clean_out_i_n_0 -attr @name clean_out_i_n_0 -pin db_rst|clean_out_i O -pin db_rst|clean_out_i__0 I1
netloc db_rst|clean_out_i_n_0 1 5 1 N 628
load net db_rst|clk -attr @name clk -hierPin db_rst clk -pin db_rst|clean_out_reg C -pin db_rst|count_reg[19:0] C -pin db_rst|sync_0_reg C -pin db_rst|sync_1_reg C
netloc db_rst|clk 1 0 7 1810 688 2080 798 NJ 798 2750 778 NJ 778 NJ 778 NJ
load net db_rst|count0[0] -attr @rip O[0] -attr @name count0[0] -pin db_rst|count0_i O[0] -pin db_rst|count_reg[19:0] D[0]
load net db_rst|count0[10] -attr @rip O[10] -attr @name count0[10] -pin db_rst|count0_i O[10] -pin db_rst|count_reg[19:0] D[10]
load net db_rst|count0[11] -attr @rip O[11] -attr @name count0[11] -pin db_rst|count0_i O[11] -pin db_rst|count_reg[19:0] D[11]
load net db_rst|count0[12] -attr @rip O[12] -attr @name count0[12] -pin db_rst|count0_i O[12] -pin db_rst|count_reg[19:0] D[12]
load net db_rst|count0[13] -attr @rip O[13] -attr @name count0[13] -pin db_rst|count0_i O[13] -pin db_rst|count_reg[19:0] D[13]
load net db_rst|count0[14] -attr @rip O[14] -attr @name count0[14] -pin db_rst|count0_i O[14] -pin db_rst|count_reg[19:0] D[14]
load net db_rst|count0[15] -attr @rip O[15] -attr @name count0[15] -pin db_rst|count0_i O[15] -pin db_rst|count_reg[19:0] D[15]
load net db_rst|count0[16] -attr @rip O[16] -attr @name count0[16] -pin db_rst|count0_i O[16] -pin db_rst|count_reg[19:0] D[16]
load net db_rst|count0[17] -attr @rip O[17] -attr @name count0[17] -pin db_rst|count0_i O[17] -pin db_rst|count_reg[19:0] D[17]
load net db_rst|count0[18] -attr @rip O[18] -attr @name count0[18] -pin db_rst|count0_i O[18] -pin db_rst|count_reg[19:0] D[18]
load net db_rst|count0[19] -attr @rip O[19] -attr @name count0[19] -pin db_rst|count0_i O[19] -pin db_rst|count_reg[19:0] D[19]
load net db_rst|count0[1] -attr @rip O[1] -attr @name count0[1] -pin db_rst|count0_i O[1] -pin db_rst|count_reg[19:0] D[1]
load net db_rst|count0[2] -attr @rip O[2] -attr @name count0[2] -pin db_rst|count0_i O[2] -pin db_rst|count_reg[19:0] D[2]
load net db_rst|count0[3] -attr @rip O[3] -attr @name count0[3] -pin db_rst|count0_i O[3] -pin db_rst|count_reg[19:0] D[3]
load net db_rst|count0[4] -attr @rip O[4] -attr @name count0[4] -pin db_rst|count0_i O[4] -pin db_rst|count_reg[19:0] D[4]
load net db_rst|count0[5] -attr @rip O[5] -attr @name count0[5] -pin db_rst|count0_i O[5] -pin db_rst|count_reg[19:0] D[5]
load net db_rst|count0[6] -attr @rip O[6] -attr @name count0[6] -pin db_rst|count0_i O[6] -pin db_rst|count_reg[19:0] D[6]
load net db_rst|count0[7] -attr @rip O[7] -attr @name count0[7] -pin db_rst|count0_i O[7] -pin db_rst|count_reg[19:0] D[7]
load net db_rst|count0[8] -attr @rip O[8] -attr @name count0[8] -pin db_rst|count0_i O[8] -pin db_rst|count_reg[19:0] D[8]
load net db_rst|count0[9] -attr @rip O[9] -attr @name count0[9] -pin db_rst|count0_i O[9] -pin db_rst|count_reg[19:0] D[9]
load net db_rst|count0_i__0_n_0 -attr @name count0_i__0_n_0 -pin db_rst|clean_out_i__0 S -pin db_rst|count0_i__0 O -pin db_rst|count_reg[19:0] RST
netloc db_rst|count0_i__0_n_0 1 3 3 2710 568N NJ 568 3330
load net db_rst|count[0] -attr @rip 0 -attr @name count[0] -pin db_rst|clean_out_i A[0] -pin db_rst|count0_i I0[0] -pin db_rst|count_reg[19:0] Q[0]
load net db_rst|count[10] -attr @rip 10 -attr @name count[10] -pin db_rst|clean_out_i A[10] -pin db_rst|count0_i I0[10] -pin db_rst|count_reg[19:0] Q[10]
load net db_rst|count[11] -attr @rip 11 -attr @name count[11] -pin db_rst|clean_out_i A[11] -pin db_rst|count0_i I0[11] -pin db_rst|count_reg[19:0] Q[11]
load net db_rst|count[12] -attr @rip 12 -attr @name count[12] -pin db_rst|clean_out_i A[12] -pin db_rst|count0_i I0[12] -pin db_rst|count_reg[19:0] Q[12]
load net db_rst|count[13] -attr @rip 13 -attr @name count[13] -pin db_rst|clean_out_i A[13] -pin db_rst|count0_i I0[13] -pin db_rst|count_reg[19:0] Q[13]
load net db_rst|count[14] -attr @rip 14 -attr @name count[14] -pin db_rst|clean_out_i A[14] -pin db_rst|count0_i I0[14] -pin db_rst|count_reg[19:0] Q[14]
load net db_rst|count[15] -attr @rip 15 -attr @name count[15] -pin db_rst|clean_out_i A[15] -pin db_rst|count0_i I0[15] -pin db_rst|count_reg[19:0] Q[15]
load net db_rst|count[16] -attr @rip 16 -attr @name count[16] -pin db_rst|clean_out_i A[16] -pin db_rst|count0_i I0[16] -pin db_rst|count_reg[19:0] Q[16]
load net db_rst|count[17] -attr @rip 17 -attr @name count[17] -pin db_rst|clean_out_i A[17] -pin db_rst|count0_i I0[17] -pin db_rst|count_reg[19:0] Q[17]
load net db_rst|count[18] -attr @rip 18 -attr @name count[18] -pin db_rst|clean_out_i A[18] -pin db_rst|count0_i I0[18] -pin db_rst|count_reg[19:0] Q[18]
load net db_rst|count[19] -attr @rip 19 -attr @name count[19] -pin db_rst|clean_out_i A[19] -pin db_rst|count0_i I0[19] -pin db_rst|count_reg[19:0] Q[19]
load net db_rst|count[1] -attr @rip 1 -attr @name count[1] -pin db_rst|clean_out_i A[1] -pin db_rst|count0_i I0[1] -pin db_rst|count_reg[19:0] Q[1]
load net db_rst|count[2] -attr @rip 2 -attr @name count[2] -pin db_rst|clean_out_i A[2] -pin db_rst|count0_i I0[2] -pin db_rst|count_reg[19:0] Q[2]
load net db_rst|count[3] -attr @rip 3 -attr @name count[3] -pin db_rst|clean_out_i A[3] -pin db_rst|count0_i I0[3] -pin db_rst|count_reg[19:0] Q[3]
load net db_rst|count[4] -attr @rip 4 -attr @name count[4] -pin db_rst|clean_out_i A[4] -pin db_rst|count0_i I0[4] -pin db_rst|count_reg[19:0] Q[4]
load net db_rst|count[5] -attr @rip 5 -attr @name count[5] -pin db_rst|clean_out_i A[5] -pin db_rst|count0_i I0[5] -pin db_rst|count_reg[19:0] Q[5]
load net db_rst|count[6] -attr @rip 6 -attr @name count[6] -pin db_rst|clean_out_i A[6] -pin db_rst|count0_i I0[6] -pin db_rst|count_reg[19:0] Q[6]
load net db_rst|count[7] -attr @rip 7 -attr @name count[7] -pin db_rst|clean_out_i A[7] -pin db_rst|count0_i I0[7] -pin db_rst|count_reg[19:0] Q[7]
load net db_rst|count[8] -attr @rip 8 -attr @name count[8] -pin db_rst|clean_out_i A[8] -pin db_rst|count0_i I0[8] -pin db_rst|count_reg[19:0] Q[8]
load net db_rst|count[9] -attr @rip 9 -attr @name count[9] -pin db_rst|clean_out_i A[9] -pin db_rst|count0_i I0[9] -pin db_rst|count_reg[19:0] Q[9]
load net db_rst|noisy_in -attr @name noisy_in -hierPin db_rst noisy_in -pin db_rst|sync_0_reg D
netloc db_rst|noisy_in 1 0 1 N 758
load net db_rst|sync_0 -attr @name sync_0 -pin db_rst|sync_0_reg Q -pin db_rst|sync_1_reg D
netloc db_rst|sync_0 1 1 1 N 748
load net db_rst|sync_1 -attr @name sync_1 -pin db_rst|clean_out_reg D -pin db_rst|count0_i__0 I0 -pin db_rst|sync_1_reg Q
netloc db_rst|sync_1 1 2 5 2350 818 NJ 818 NJ 818 NJ 818 NJ
load net display|<const0> -ground -attr @name <const0> -pin display|an_i I0[0] -pin display|an_i I1[1] -pin display|an_i I2[2] -pin display|an_i I3[3]
load net display|<const1> -power -attr @name <const1> -pin display|an_i I0[3] -pin display|an_i I0[2] -pin display|an_i I0[1] -pin display|an_i I1[3] -pin display|an_i I1[2] -pin display|an_i I1[0] -pin display|an_i I2[3] -pin display|an_i I2[1] -pin display|an_i I2[0] -pin display|an_i I3[2] -pin display|an_i I3[1] -pin display|an_i I3[0] -pin display|refresh_counter0_i I1
load net display|active_digit[0] -attr @name active_digit[0] -pin display|an_i S[0] -pin display|bcd_i S[0] -pin display|refresh_counter0_i I0[16] -pin display|refresh_counter_reg[17:0] Q[16]
load net display|active_digit[1] -attr @name active_digit[1] -pin display|an_i S[1] -pin display|bcd_i S[1] -pin display|refresh_counter0_i I0[17] -pin display|refresh_counter_reg[17:0] Q[17]
load net display|an[0] -attr @rip O[0] -attr @name an[0] -hierPin display an[0] -pin display|an_i O[0]
load net display|an[1] -attr @rip O[1] -attr @name an[1] -hierPin display an[1] -pin display|an_i O[1]
load net display|an[2] -attr @rip O[2] -attr @name an[2] -hierPin display an[2] -pin display|an_i O[2]
load net display|an[3] -attr @rip O[3] -attr @name an[3] -hierPin display an[3] -pin display|an_i O[3]
load net display|bcd[0] -attr @rip O[0] -attr @name bcd[0] -pin display|bcd_i O[0] -pin display|seg_i A[0]
load net display|bcd[1] -attr @rip O[1] -attr @name bcd[1] -pin display|bcd_i O[1] -pin display|seg_i A[1]
load net display|bcd[2] -attr @rip O[2] -attr @name bcd[2] -pin display|bcd_i O[2] -pin display|seg_i A[2]
load net display|bcd[3] -attr @rip O[3] -attr @name bcd[3] -pin display|bcd_i O[3] -pin display|seg_i A[3]
load net display|clk -attr @name clk -hierPin display clk -pin display|refresh_counter_reg[17:0] C
netloc display|clk 1 0 2 NJ 488 3370
load net display|d0[0] -attr @rip d0[0] -attr @name d0[0] -hierPin display d0[0] -pin display|bcd_i I0[0]
load net display|d0[1] -attr @rip d0[1] -attr @name d0[1] -hierPin display d0[1] -pin display|bcd_i I0[1]
load net display|d0[2] -attr @rip d0[2] -attr @name d0[2] -hierPin display d0[2] -pin display|bcd_i I0[2]
load net display|d0[3] -attr @rip d0[3] -attr @name d0[3] -hierPin display d0[3] -pin display|bcd_i I0[3]
load net display|d1[0] -attr @rip d1[0] -attr @name d1[0] -hierPin display d1[0] -pin display|bcd_i I1[0]
load net display|d1[1] -attr @rip d1[1] -attr @name d1[1] -hierPin display d1[1] -pin display|bcd_i I1[1]
load net display|d1[2] -attr @rip d1[2] -attr @name d1[2] -hierPin display d1[2] -pin display|bcd_i I1[2]
load net display|d1[3] -attr @rip d1[3] -attr @name d1[3] -hierPin display d1[3] -pin display|bcd_i I1[3]
load net display|d2[0] -attr @rip d2[0] -attr @name d2[0] -hierPin display d2[0] -pin display|bcd_i I2[0]
load net display|d2[1] -attr @rip d2[1] -attr @name d2[1] -hierPin display d2[1] -pin display|bcd_i I2[1]
load net display|d2[2] -attr @rip d2[2] -attr @name d2[2] -hierPin display d2[2] -pin display|bcd_i I2[2]
load net display|d2[3] -attr @rip d2[3] -attr @name d2[3] -hierPin display d2[3] -pin display|bcd_i I2[3]
load net display|d3[0] -attr @rip d3[0] -attr @name d3[0] -hierPin display d3[0] -pin display|bcd_i I3[0]
load net display|d3[1] -attr @rip d3[1] -attr @name d3[1] -hierPin display d3[1] -pin display|bcd_i I3[1]
load net display|d3[2] -attr @rip d3[2] -attr @name d3[2] -hierPin display d3[2] -pin display|bcd_i I3[2]
load net display|d3[3] -attr @rip d3[3] -attr @name d3[3] -hierPin display d3[3] -pin display|bcd_i I3[3]
load net display|refresh_counter0[0] -attr @rip O[0] -attr @name refresh_counter0[0] -pin display|refresh_counter0_i O[0] -pin display|refresh_counter_reg[17:0] D[0]
load net display|refresh_counter0[10] -attr @rip O[10] -attr @name refresh_counter0[10] -pin display|refresh_counter0_i O[10] -pin display|refresh_counter_reg[17:0] D[10]
load net display|refresh_counter0[11] -attr @rip O[11] -attr @name refresh_counter0[11] -pin display|refresh_counter0_i O[11] -pin display|refresh_counter_reg[17:0] D[11]
load net display|refresh_counter0[12] -attr @rip O[12] -attr @name refresh_counter0[12] -pin display|refresh_counter0_i O[12] -pin display|refresh_counter_reg[17:0] D[12]
load net display|refresh_counter0[13] -attr @rip O[13] -attr @name refresh_counter0[13] -pin display|refresh_counter0_i O[13] -pin display|refresh_counter_reg[17:0] D[13]
load net display|refresh_counter0[14] -attr @rip O[14] -attr @name refresh_counter0[14] -pin display|refresh_counter0_i O[14] -pin display|refresh_counter_reg[17:0] D[14]
load net display|refresh_counter0[15] -attr @rip O[15] -attr @name refresh_counter0[15] -pin display|refresh_counter0_i O[15] -pin display|refresh_counter_reg[17:0] D[15]
load net display|refresh_counter0[16] -attr @rip O[16] -attr @name refresh_counter0[16] -pin display|refresh_counter0_i O[16] -pin display|refresh_counter_reg[17:0] D[16]
load net display|refresh_counter0[17] -attr @rip O[17] -attr @name refresh_counter0[17] -pin display|refresh_counter0_i O[17] -pin display|refresh_counter_reg[17:0] D[17]
load net display|refresh_counter0[1] -attr @rip O[1] -attr @name refresh_counter0[1] -pin display|refresh_counter0_i O[1] -pin display|refresh_counter_reg[17:0] D[1]
load net display|refresh_counter0[2] -attr @rip O[2] -attr @name refresh_counter0[2] -pin display|refresh_counter0_i O[2] -pin display|refresh_counter_reg[17:0] D[2]
load net display|refresh_counter0[3] -attr @rip O[3] -attr @name refresh_counter0[3] -pin display|refresh_counter0_i O[3] -pin display|refresh_counter_reg[17:0] D[3]
load net display|refresh_counter0[4] -attr @rip O[4] -attr @name refresh_counter0[4] -pin display|refresh_counter0_i O[4] -pin display|refresh_counter_reg[17:0] D[4]
load net display|refresh_counter0[5] -attr @rip O[5] -attr @name refresh_counter0[5] -pin display|refresh_counter0_i O[5] -pin display|refresh_counter_reg[17:0] D[5]
load net display|refresh_counter0[6] -attr @rip O[6] -attr @name refresh_counter0[6] -pin display|refresh_counter0_i O[6] -pin display|refresh_counter_reg[17:0] D[6]
load net display|refresh_counter0[7] -attr @rip O[7] -attr @name refresh_counter0[7] -pin display|refresh_counter0_i O[7] -pin display|refresh_counter_reg[17:0] D[7]
load net display|refresh_counter0[8] -attr @rip O[8] -attr @name refresh_counter0[8] -pin display|refresh_counter0_i O[8] -pin display|refresh_counter_reg[17:0] D[8]
load net display|refresh_counter0[9] -attr @rip O[9] -attr @name refresh_counter0[9] -pin display|refresh_counter0_i O[9] -pin display|refresh_counter_reg[17:0] D[9]
load net display|refresh_counter_reg_n_10 -attr @rip 7 -attr @name refresh_counter_reg_n_10 -pin display|refresh_counter0_i I0[7] -pin display|refresh_counter_reg[17:0] Q[7]
load net display|refresh_counter_reg_n_11 -attr @rip 6 -attr @name refresh_counter_reg_n_11 -pin display|refresh_counter0_i I0[6] -pin display|refresh_counter_reg[17:0] Q[6]
load net display|refresh_counter_reg_n_12 -attr @rip 5 -attr @name refresh_counter_reg_n_12 -pin display|refresh_counter0_i I0[5] -pin display|refresh_counter_reg[17:0] Q[5]
load net display|refresh_counter_reg_n_13 -attr @rip 4 -attr @name refresh_counter_reg_n_13 -pin display|refresh_counter0_i I0[4] -pin display|refresh_counter_reg[17:0] Q[4]
load net display|refresh_counter_reg_n_14 -attr @rip 3 -attr @name refresh_counter_reg_n_14 -pin display|refresh_counter0_i I0[3] -pin display|refresh_counter_reg[17:0] Q[3]
load net display|refresh_counter_reg_n_15 -attr @rip 2 -attr @name refresh_counter_reg_n_15 -pin display|refresh_counter0_i I0[2] -pin display|refresh_counter_reg[17:0] Q[2]
load net display|refresh_counter_reg_n_16 -attr @rip 1 -attr @name refresh_counter_reg_n_16 -pin display|refresh_counter0_i I0[1] -pin display|refresh_counter_reg[17:0] Q[1]
load net display|refresh_counter_reg_n_17 -attr @rip 0 -attr @name refresh_counter_reg_n_17 -pin display|refresh_counter0_i I0[0] -pin display|refresh_counter_reg[17:0] Q[0]
load net display|refresh_counter_reg_n_2 -attr @rip 15 -attr @name refresh_counter_reg_n_2 -pin display|refresh_counter0_i I0[15] -pin display|refresh_counter_reg[17:0] Q[15]
load net display|refresh_counter_reg_n_3 -attr @rip 14 -attr @name refresh_counter_reg_n_3 -pin display|refresh_counter0_i I0[14] -pin display|refresh_counter_reg[17:0] Q[14]
load net display|refresh_counter_reg_n_4 -attr @rip 13 -attr @name refresh_counter_reg_n_4 -pin display|refresh_counter0_i I0[13] -pin display|refresh_counter_reg[17:0] Q[13]
load net display|refresh_counter_reg_n_5 -attr @rip 12 -attr @name refresh_counter_reg_n_5 -pin display|refresh_counter0_i I0[12] -pin display|refresh_counter_reg[17:0] Q[12]
load net display|refresh_counter_reg_n_6 -attr @rip 11 -attr @name refresh_counter_reg_n_6 -pin display|refresh_counter0_i I0[11] -pin display|refresh_counter_reg[17:0] Q[11]
load net display|refresh_counter_reg_n_7 -attr @rip 10 -attr @name refresh_counter_reg_n_7 -pin display|refresh_counter0_i I0[10] -pin display|refresh_counter_reg[17:0] Q[10]
load net display|refresh_counter_reg_n_8 -attr @rip 9 -attr @name refresh_counter_reg_n_8 -pin display|refresh_counter0_i I0[9] -pin display|refresh_counter_reg[17:0] Q[9]
load net display|refresh_counter_reg_n_9 -attr @rip 8 -attr @name refresh_counter_reg_n_9 -pin display|refresh_counter0_i I0[8] -pin display|refresh_counter_reg[17:0] Q[8]
load net display|seg[0] -attr @rip O[0] -attr @name seg[0] -hierPin display seg[0] -pin display|seg_i O[0]
load net display|seg[1] -attr @rip O[1] -attr @name seg[1] -hierPin display seg[1] -pin display|seg_i O[1]
load net display|seg[2] -attr @rip O[2] -attr @name seg[2] -hierPin display seg[2] -pin display|seg_i O[2]
load net display|seg[3] -attr @rip O[3] -attr @name seg[3] -hierPin display seg[3] -pin display|seg_i O[3]
load net display|seg[4] -attr @rip O[4] -attr @name seg[4] -hierPin display seg[4] -pin display|seg_i O[4]
load net display|seg[5] -attr @rip O[5] -attr @name seg[5] -hierPin display seg[5] -pin display|seg_i O[5]
load net display|seg[6] -attr @rip O[6] -attr @name seg[6] -hierPin display seg[6] -pin display|seg_i O[6]
load netBundle @display|d0 4 display|d0[3] display|d0[2] display|d0[1] display|d0[0] -autobundled
netbloc @display|d0 1 0 3 NJ 508 NJ 508 3670
load netBundle @display|d1 4 display|d1[3] display|d1[2] display|d1[1] display|d1[0] -autobundled
netbloc @display|d1 1 0 3 NJ 658 NJ 658 N
load netBundle @display|d2 4 display|d2[3] display|d2[2] display|d2[1] display|d2[0] -autobundled
netbloc @display|d2 1 0 3 NJ 678 NJ 678 N
load netBundle @display|d3 4 display|d3[3] display|d3[2] display|d3[1] display|d3[0] -autobundled
netbloc @display|d3 1 0 3 NJ 698 NJ 698 N
load netBundle @display|an 4 display|an[3] display|an[2] display|an[1] display|an[0] -autobundled
netbloc @display|an 1 4 1 NJ 558
load netBundle @display|bcd 4 display|bcd[3] display|bcd[2] display|bcd[1] display|bcd[0] -autobundled
netbloc @display|bcd 1 3 1 4050 668n
load netBundle @display|refresh_counter0 18 display|refresh_counter0[17] display|refresh_counter0[16] display|refresh_counter0[15] display|refresh_counter0[14] display|refresh_counter0[13] display|refresh_counter0[12] display|refresh_counter0[11] display|refresh_counter0[10] display|refresh_counter0[9] display|refresh_counter0[8] display|refresh_counter0[7] display|refresh_counter0[6] display|refresh_counter0[5] display|refresh_counter0[4] display|refresh_counter0[3] display|refresh_counter0[2] display|refresh_counter0[1] display|refresh_counter0[0] -autobundled
netbloc @display|refresh_counter0 1 1 1 NJ 578
load netBundle @display|seg 7 display|seg[6] display|seg[5] display|seg[4] display|seg[3] display|seg[2] display|seg[1] display|seg[0] -autobundled
netbloc @display|seg 1 4 1 NJ 698
load netBundle @display|refresh_counter_reg_n_ 18 display|active_digit[1] display|active_digit[0] display|refresh_counter_reg_n_2 display|refresh_counter_reg_n_3 display|refresh_counter_reg_n_4 display|refresh_counter_reg_n_5 display|refresh_counter_reg_n_6 display|refresh_counter_reg_n_7 display|refresh_counter_reg_n_8 display|refresh_counter_reg_n_9 display|refresh_counter_reg_n_10 display|refresh_counter_reg_n_11 display|refresh_counter_reg_n_12 display|refresh_counter_reg_n_13 display|refresh_counter_reg_n_14 display|refresh_counter_reg_n_15 display|refresh_counter_reg_n_16 display|refresh_counter_reg_n_17 -autobundled
netbloc @display|refresh_counter_reg_n_ 1 0 4 3030 638 NJ 638 3650 748N 4070
load netBundle @db_rst|count0 20 db_rst|count0[19] db_rst|count0[18] db_rst|count0[17] db_rst|count0[16] db_rst|count0[15] db_rst|count0[14] db_rst|count0[13] db_rst|count0[12] db_rst|count0[11] db_rst|count0[10] db_rst|count0[9] db_rst|count0[8] db_rst|count0[7] db_rst|count0[6] db_rst|count0[5] db_rst|count0[4] db_rst|count0[3] db_rst|count0[2] db_rst|count0[1] db_rst|count0[0] -autobundled
netbloc @db_rst|count0 1 3 1 NJ 648
load netBundle @db_rst|count 20 db_rst|count[19] db_rst|count[18] db_rst|count[17] db_rst|count[16] db_rst|count[15] db_rst|count[14] db_rst|count[13] db_rst|count[12] db_rst|count[11] db_rst|count[10] db_rst|count[9] db_rst|count[8] db_rst|count[7] db_rst|count[6] db_rst|count[5] db_rst|count[4] db_rst|count[3] db_rst|count[2] db_rst|count[1] db_rst|count[0] -autobundled
netbloc @db_rst|count 1 2 3 2350 548 NJ 548 3040
load netBundle @sw 2 sw[1] sw[0] -autobundled
netbloc @sw 1 0 6 20J 150N 480J 150 810 420N 1290 380 1610 510 2000
load netBundle @an 4 an[3] an[2] an[1] an[0] -autobundled
netbloc @an 1 8 1 4670J 520n
load netBundle @seg 7 seg[6] seg[5] seg[4] seg[3] seg[2] seg[1] seg[0] -autobundled
netbloc @seg 1 8 1 4690J 540n
load netBundle @blink_ticker0_i_n_ 24 blink_ticker0_i_n_0 blink_ticker0_i_n_1 blink_ticker0_i_n_2 blink_ticker0_i_n_3 blink_ticker0_i_n_4 blink_ticker0_i_n_5 blink_ticker0_i_n_6 blink_ticker0_i_n_7 blink_ticker0_i_n_8 blink_ticker0_i_n_9 blink_ticker0_i_n_10 blink_ticker0_i_n_11 blink_ticker0_i_n_12 blink_ticker0_i_n_13 blink_ticker0_i_n_14 blink_ticker0_i_n_15 blink_ticker0_i_n_16 blink_ticker0_i_n_17 blink_ticker0_i_n_18 blink_ticker0_i_n_19 blink_ticker0_i_n_20 blink_ticker0_i_n_21 blink_ticker0_i_n_22 blink_ticker0_i_n_23 -autobundled
netbloc @blink_ticker0_i_n_ 1 1 1 420 220n
load netBundle @m0 4 m0[3] m0[2] m0[1] m0[0] -autobundled
netbloc @m0 1 6 1 2360 450n
load netBundle @m1 4 m1[3] m1[2] m1[1] m1[0] -autobundled
netbloc @m1 1 6 1 2420 590n
load netBundle @s0 4 s0[3] s0[2] s0[1] s0[0] -autobundled
netbloc @s0 1 6 1 2340 330n
load netBundle @s1 4 s1[3] s1[2] s1[1] s1[0] -autobundled
netbloc @s1 1 6 1 2340 640n
load netBundle @disp_m0 4 disp_m0[3] disp_m0[2] disp_m0[1] disp_m0[0] -autobundled
netbloc @disp_m0 1 7 1 2860 440n
load netBundle @disp_m1 4 disp_m1[3] disp_m1[2] disp_m1[1] disp_m1[0] -autobundled
netbloc @disp_m1 1 7 1 2840 580n
load netBundle @disp_s0 4 disp_s0[3] disp_s0[2] disp_s0[1] disp_s0[0] -autobundled
netbloc @disp_s0 1 7 1 2880 320n
load netBundle @disp_s1 4 disp_s1[3] disp_s1[2] disp_s1[1] disp_s1[0] -autobundled
netbloc @disp_s1 1 7 1 2820 658n
load netBundle @blink_ticker 26 blink_ticker[25] blink_ticker[24] blink_ticker[23] blink_ticker[22] blink_ticker[21] blink_ticker[20] blink_ticker[19] blink_ticker[18] blink_ticker[17] blink_ticker[16] blink_ticker[15] blink_ticker[14] blink_ticker[13] blink_ticker[12] blink_ticker[11] blink_ticker[10] blink_ticker[9] blink_ticker[8] blink_ticker[7] blink_ticker[6] blink_ticker[5] blink_ticker[4] blink_ticker[3] blink_ticker[2] blink_ticker[1] blink_ticker[0] -autobundled
netbloc @blink_ticker 1 0 3 40 170 NJ 170 790
levelinfo -pg 1 0 230 590 1080 1410 1780 2160 2630 3000 4720
levelinfo -hier db_rst * 1920 2190 2520 2860 3140 3520 3790 *
levelinfo -hier display * 3180 3480 3860 4330 *
pagesize -pg 1 -db -bbox -sgen -100 0 5440 1010
pagesize -hier db_rst -db -bbox -sgen 1780 538 3980 868
pagesize -hier display -db -bbox -sgen 3000 468 4540 758
show
zoom 0.318059
scrollpos 153 -135
#
# initialize ictrl to current module top work:top:NOFILE
ictrl init topinfo |

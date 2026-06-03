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
load symbol FDCE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin CLR input.left pin D input.left fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol debouncer work:debouncer:NOFILE HIERBOX pin FSM_sequential_state_reg[0] output.right pin FSM_sequential_state_reg[0]_0 output.right pin FSM_sequential_state_reg[2] output.right pin clk_IBUF_BUFG input.left pin p1_stop output.right pin p2_stop input.left pin p2_win_pulse output.right pin start_timer_pulse output.right pin sync_1_reg_0 input.left pin timer_reg[26] output.right pinBus D output.right [31:0] pinBus Q input.left [31:0] pinBus start_timer_pulse_reg_i_2_0 input.left [29:0] pinBus state input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol debouncer_0 work:debouncer_0:NOFILE HIERBOX pin clk_IBUF_BUFG input.left pin p1_stop input.left pin p1_win_pulse output.right pin p2_stop output.right pin stop_timer_pulse output.right pin sync_1_reg_0 input.left pinBus E output.right [0:0] pinBus state input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol debouncer_1 work:debouncer_1:NOFILE HIERBOX pin clk_IBUF_BUFG input.left pin rst output.right pin sync_1_reg_0 input.left boxcolor 1 fillcolor 2 minwidth 13%
load symbol sseg_driver work:sseg_driver:NOFILE HIERBOX pin FSM_sequential_state_reg[2] output.right pin clk_IBUF_BUFG input.left pin seg_OBUF[3]_inst_i_1_0 input.left pin seg_OBUF[3]_inst_i_1_1 input.left pin seg_OBUF[3]_inst_i_1_2 input.left pin seg_OBUF[3]_inst_i_1_3 input.left pinBus Q input.left [2:0] pinBus active_digit output.right [1:0] pinBus an_OBUF output.right [3:0] pinBus reaction_bcd input.left [9:0] pinBus seg_OBUF output.right [6:0] pinBus seg_OBUF[6]_inst_i_5_0 input.left [2:0] pinBus state input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol randomizer work:randomizer:NOFILE HIERBOX pin bit_count_reg[0]_0 input.left pin clk_IBUF_BUFG input.left pinBus D output.right [29:0] pinBus SR input.left [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol reaction_timer work:reaction_timer:NOFILE HIERBOX pin bcd_thousands_reg[1]_0 output.right pin bcd_thousands_reg[2]_0 output.right pin bcd_thousands_reg[3]_0 output.right pin clk_IBUF_BUFG input.left pin timer_running_reg_0 input.left pin timer_running_reg_1 input.left pinBus SR input.left [0:0] pinBus active_digit input.left [1:0] pinBus bcd_thousands_reg[0]_0 output.right [9:0] pinBus state input.left [0:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol score_counter work:score_counter:NOFILE HIERBOX pin FSM_sequential_state_reg[0] input.left pin FSM_sequential_state_reg[1] output.right pin clk_IBUF_BUFG input.left pin p2_score_reg[0]_0 output.right pin rand_ready_reg input.left pin seg_OBUF[6]_inst_i_3 input.left pinBus E output.right [0:0] pinBus Q output.right [2:0] pinBus SR input.left [0:0] pinBus active_digit input.left [1:0] pinBus p1_score_reg[0]_0 input.left [0:0] pinBus p2_score_reg[0]_1 input.left [0:0] pinBus p2_score_reg[3]_0 output.right [2:0] pinBus state input.left [2:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol synchronizer work:synchronizer:NOFILE HIERBOX pin btnL_IBUF input.left pin clk_IBUF_BUFG input.left pin stage1_reg_reg_0 output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol synchronizer_2 work:synchronizer_2:NOFILE HIERBOX pin btnR_IBUF input.left pin clk_IBUF_BUFG input.left pin stage1_reg_reg_0 output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol synchronizer_3 work:synchronizer_3:NOFILE HIERBOX pin btnU_IBUF input.left pin clk_IBUF_BUFG input.left pin stage1_reg_reg_0 output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol FDPE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin PRE input.left fillcolor 1
load port btnL input -pg 1 -lvl 0 -x 0 -y 5010
load port btnR input -pg 1 -lvl 0 -x 0 -y 5290
load port btnU input -pg 1 -lvl 0 -x 0 -y 5400
load port clk input -pg 1 -lvl 0 -x 0 -y 5470
load port dp output -pg 1 -lvl 13 -x 5660 -y 4970
load portBus an output [3:0] -attr @name an[3:0] -pg 1 -lvl 13 -x 5660 -y 4680
load portBus seg output [6:0] -attr @name seg[6:0] -pg 1 -lvl 13 -x 5660 -y 5040
load inst FSM_sequential_state_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=16, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=9, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 5 -x 1520 -y 4600
load inst FSM_sequential_state_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=48, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=9, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 5 -x 1520 -y 4750
load inst FSM_sequential_state_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=21, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=9, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 5 -x 1520 -y 5110
load inst an_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 12 -x 5480 -y 4680
load inst an_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 12 -x 5480 -y 4750
load inst an_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 12 -x 5480 -y 4820
load inst an_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 12 -x 5480 -y 4890
load inst btnL_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 6 -x 2040 -y 5010
load inst btnR_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 4 -x 1130 -y 5290
load inst btnU_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 2 -x 370 -y 5400
load inst clk_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#000000) BUFG -pinAttr O @attr {FO=264, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 2 -x 370 -y 5470
load inst clk_IBUF_inst IBUF hdi_primitives -attr @cell(#000000) IBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 1 -x 120 -y 5470
load inst db_p1 debouncer work:debouncer:NOFILE -autohide -attr @cell(#000000) debouncer -pinAttr FSM_sequential_state_reg[0] @attr SL=N/A -pinAttr FSM_sequential_state_reg[0]_0 @attr SL=N/A -pinAttr FSM_sequential_state_reg[2] @attr SL=N/A -pinAttr clk_IBUF_BUFG @attr SL=N/A -pinAttr p1_stop @attr SL=N/A -pinAttr p2_stop @attr SL=N/A -pinAttr p2_win_pulse @attr SL=N/A -pinAttr start_timer_pulse @attr SL=N/A -pinAttr sync_1_reg_0 @attr SL=N/A -pinAttr timer_reg[26] @attr SL=N/A -pinBusAttr D @name D[31:0] -pinBusAttr D @attr SL=N/A -pinBusAttr Q @name Q[31:0] -pinBusAttr Q @attr SL=N/A -pinBusAttr start_timer_pulse_reg_i_2_0 @name start_timer_pulse_reg_i_2_0[29:0] -pinBusAttr start_timer_pulse_reg_i_2_0 @attr SL=N/A -pinBusAttr state @name state[2:0] -pinBusAttr state @attr SL=N/A -pg 1 -lvl 8 -x 3140 -y 4900
load inst db_p2 debouncer_0 work:debouncer_0:NOFILE -autohide -attr @cell(#000000) debouncer_0 -pinAttr clk_IBUF_BUFG @attr SL=N/A -pinAttr p1_stop @attr SL=N/A -pinAttr p1_win_pulse @attr SL=N/A -pinAttr p2_stop @attr SL=N/A -pinAttr stop_timer_pulse @attr SL=N/A -pinAttr sync_1_reg_0 @attr SL=N/A -pinBusAttr E @name E -pinBusAttr E @attr SL=N/A -pinBusAttr state @name state[2:0] -pinBusAttr state @attr SL=N/A -pg 1 -lvl 6 -x 2040 -y 5100
load inst db_rst debouncer_1 work:debouncer_1:NOFILE -autohide -attr @cell(#000000) debouncer_1 -pinAttr clk_IBUF_BUFG @attr SL=N/A -pinAttr rst @attr SL=N/A -pinAttr sync_1_reg_0 @attr SL=N/A -pg 1 -lvl 4 -x 1130 -y 5370
load inst display sseg_driver work:sseg_driver:NOFILE -autohide -attr @cell(#000000) sseg_driver -pinAttr FSM_sequential_state_reg[2] @attr SL=N/A -pinAttr clk_IBUF_BUFG @attr SL=N/A -pinAttr seg_OBUF[3]_inst_i_1_0 @attr SL=N/A -pinAttr seg_OBUF[3]_inst_i_1_1 @attr SL=N/A -pinAttr seg_OBUF[3]_inst_i_1_2 @attr SL=N/A -pinAttr seg_OBUF[3]_inst_i_1_3 @attr SL=N/A -pinBusAttr Q @name Q[2:0] -pinBusAttr Q @attr SL=N/A -pinBusAttr active_digit @name active_digit[1:0] -pinBusAttr active_digit @attr SL=N/A -pinBusAttr an_OBUF @name an_OBUF[3:0] -pinBusAttr an_OBUF @attr SL=N/A -pinBusAttr reaction_bcd @name reaction_bcd[9:0] -pinBusAttr reaction_bcd @attr SL=N/A -pinBusAttr seg_OBUF @name seg_OBUF[6:0] -pinBusAttr seg_OBUF @attr SL=N/A -pinBusAttr seg_OBUF[6]_inst_i_5_0 @name seg_OBUF[6]_inst_i_5_0[2:0] -pinBusAttr seg_OBUF[6]_inst_i_5_0 @attr SL=N/A -pinBusAttr state @name state[2:0] -pinBusAttr state @attr SL=N/A -pg 1 -lvl 11 -x 5000 -y 4930
load inst dp_OBUF_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=9, SL=N/A} -pg 1 -lvl 12 -x 5480 -y 4970
load inst p1_win_pulse_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=9, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 9 -x 3740 -y 4610
load inst p2_win_pulse_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=9, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 9 -x 3740 -y 4760
load inst rand_inst randomizer work:randomizer:NOFILE -autohide -attr @cell(#000000) randomizer -pinAttr bit_count_reg[0]_0 @attr SL=N/A -pinAttr clk_IBUF_BUFG @attr SL=N/A -pinBusAttr D @name D[29:0] -pinBusAttr D @attr SL=N/A -pinBusAttr SR @name SR -pinBusAttr SR @attr SL=N/A -pg 1 -lvl 6 -x 2040 -y 5350
load inst rand_ready_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=1, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=9, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=31, SL=N/A} -pg 1 -lvl 5 -x 1520 -y 5430
load inst rt_inst reaction_timer work:reaction_timer:NOFILE -autohide -attr @cell(#000000) reaction_timer -pinAttr bcd_thousands_reg[1]_0 @attr SL=N/A -pinAttr bcd_thousands_reg[2]_0 @attr SL=N/A -pinAttr bcd_thousands_reg[3]_0 @attr SL=N/A -pinAttr clk_IBUF_BUFG @attr SL=N/A -pinAttr timer_running_reg_0 @attr SL=N/A -pinAttr timer_running_reg_1 @attr SL=N/A -pinBusAttr SR @name SR -pinBusAttr SR @attr SL=N/A -pinBusAttr active_digit @name active_digit[1:0] -pinBusAttr active_digit @attr SL=N/A -pinBusAttr bcd_thousands_reg[0]_0 @name bcd_thousands_reg[0]_0[9:0] -pinBusAttr bcd_thousands_reg[0]_0 @attr SL=N/A -pinBusAttr state @name state -pinBusAttr state @attr SL=N/A -pg 1 -lvl 10 -x 4300 -y 4690
load inst sc_inst score_counter work:score_counter:NOFILE -autohide -attr @cell(#000000) score_counter -pinAttr FSM_sequential_state_reg[0] @attr SL=N/A -pinAttr FSM_sequential_state_reg[1] @attr SL=N/A -pinAttr clk_IBUF_BUFG @attr SL=N/A -pinAttr p2_score_reg[0]_0 @attr SL=N/A -pinAttr rand_ready_reg @attr SL=N/A -pinAttr seg_OBUF[6]_inst_i_3 @attr SL=N/A -pinBusAttr E @name E -pinBusAttr E @attr SL=N/A -pinBusAttr Q @name Q[2:0] -pinBusAttr Q @attr SL=N/A -pinBusAttr SR @name SR -pinBusAttr SR @attr SL=N/A -pinBusAttr active_digit @name active_digit[1:0] -pinBusAttr active_digit @attr SL=N/A -pinBusAttr p1_score_reg[0]_0 @name p1_score_reg[0]_0 -pinBusAttr p1_score_reg[0]_0 @attr SL=N/A -pinBusAttr p2_score_reg[0]_1 @name p2_score_reg[0]_1 -pinBusAttr p2_score_reg[0]_1 @attr SL=N/A -pinBusAttr p2_score_reg[3]_0 @name p2_score_reg[3]_0[2:0] -pinBusAttr p2_score_reg[3]_0 @attr SL=N/A -pinBusAttr state @name state[2:0] -pinBusAttr state @attr SL=N/A -pg 1 -lvl 10 -x 4300 -y 4930
load inst seg_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 12 -x 5480 -y 5040
load inst seg_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 12 -x 5480 -y 5110
load inst seg_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 12 -x 5480 -y 5180
load inst seg_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 12 -x 5480 -y 5250
load inst seg_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 12 -x 5480 -y 5320
load inst seg_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 12 -x 5480 -y 5390
load inst seg_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#000000) OBUF -pinAttr O @attr {FO=1, SL=N/A} -pinAttr I @attr {FO=1, SL=N/A} -pg 1 -lvl 12 -x 5480 -y 5460
load inst start_timer_pulse_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=41, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=9, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 9 -x 3740 -y 5000
load inst stop_timer_pulse_reg FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=20, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=9, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 9 -x 3740 -y 5200
load inst sync_p1 synchronizer work:synchronizer:NOFILE -autohide -attr @cell(#000000) synchronizer -pinAttr btnL_IBUF @attr SL=N/A -pinAttr clk_IBUF_BUFG @attr SL=N/A -pinAttr stage1_reg_reg_0 @attr SL=N/A -pg 1 -lvl 7 -x 2550 -y 5000
load inst sync_p2 synchronizer_2 work:synchronizer_2:NOFILE -autohide -attr @cell(#000000) synchronizer_2 -pinAttr btnR_IBUF @attr SL=N/A -pinAttr clk_IBUF_BUFG @attr SL=N/A -pinAttr stage1_reg_reg_0 @attr SL=N/A -pg 1 -lvl 5 -x 1520 -y 5280
load inst sync_rst synchronizer_3 work:synchronizer_3:NOFILE -autohide -attr @cell(#000000) synchronizer_3 -pinAttr btnU_IBUF @attr SL=N/A -pinAttr clk_IBUF_BUFG @attr SL=N/A -pinAttr stage1_reg_reg_0 @attr SL=N/A -pg 1 -lvl 3 -x 720 -y 5390
load inst target_delay_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 5350
load inst target_delay_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 6850
load inst target_delay_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 7000
load inst target_delay_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 7150
load inst target_delay_reg[13] FDPE hdi_primitives -attr @cell(#000000) FDPE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pinAttr PRE @attr {FO=177, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 7300
load inst target_delay_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 7450
load inst target_delay_reg[15] FDPE hdi_primitives -attr @cell(#000000) FDPE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pinAttr PRE @attr {FO=177, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 7600
load inst target_delay_reg[16] FDPE hdi_primitives -attr @cell(#000000) FDPE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pinAttr PRE @attr {FO=177, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 7750
load inst target_delay_reg[17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 7900
load inst target_delay_reg[18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 8050
load inst target_delay_reg[19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 8200
load inst target_delay_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 5500
load inst target_delay_reg[20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 8350
load inst target_delay_reg[21] FDPE hdi_primitives -attr @cell(#000000) FDPE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pinAttr PRE @attr {FO=177, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 8500
load inst target_delay_reg[22] FDPE hdi_primitives -attr @cell(#000000) FDPE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pinAttr PRE @attr {FO=177, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 8650
load inst target_delay_reg[23] FDPE hdi_primitives -attr @cell(#000000) FDPE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pinAttr PRE @attr {FO=177, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 8800
load inst target_delay_reg[24] FDPE hdi_primitives -attr @cell(#000000) FDPE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pinAttr PRE @attr {FO=177, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 8950
load inst target_delay_reg[25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 9100
load inst target_delay_reg[26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 9250
load inst target_delay_reg[27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 9400
load inst target_delay_reg[28] FDPE hdi_primitives -attr @cell(#000000) FDPE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pinAttr PRE @attr {FO=177, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 9550
load inst target_delay_reg[29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 9700
load inst target_delay_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 5650
load inst target_delay_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 5800
load inst target_delay_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 5950
load inst target_delay_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 6100
load inst target_delay_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 6250
load inst target_delay_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 6400
load inst target_delay_reg[8] FDPE hdi_primitives -attr @cell(#000000) FDPE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pinAttr PRE @attr {FO=177, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 6550
load inst target_delay_reg[9] FDPE hdi_primitives -attr @cell(#000000) FDPE -pinAttr Q @attr {FO=2, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=31, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pinAttr PRE @attr {FO=177, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 6700
load inst timer_reg[0] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 80
load inst timer_reg[10] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 1580
load inst timer_reg[11] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 1730
load inst timer_reg[12] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 1880
load inst timer_reg[13] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 2030
load inst timer_reg[14] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 2180
load inst timer_reg[15] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 2330
load inst timer_reg[16] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 2480
load inst timer_reg[17] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 2630
load inst timer_reg[18] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 2780
load inst timer_reg[19] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=5, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 2930
load inst timer_reg[1] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=3, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 230
load inst timer_reg[20] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 3080
load inst timer_reg[21] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 3230
load inst timer_reg[22] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 3380
load inst timer_reg[23] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 3530
load inst timer_reg[24] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 3680
load inst timer_reg[25] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 3830
load inst timer_reg[26] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 3980
load inst timer_reg[27] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=5, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 4130
load inst timer_reg[28] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 4280
load inst timer_reg[29] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 4430
load inst timer_reg[2] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=3, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 380
load inst timer_reg[30] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 4580
load inst timer_reg[31] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 4730
load inst timer_reg[3] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=3, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 530
load inst timer_reg[4] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=3, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 680
load inst timer_reg[5] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=3, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 830
load inst timer_reg[6] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=3, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 980
load inst timer_reg[7] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=3, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 1130
load inst timer_reg[8] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=3, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 1280
load inst timer_reg[9] FDCE hdi_primitives -attr @cell(#000000) FDCE -pinAttr Q @attr {FO=4, SL=N/A} -pinAttr C @attr {FO=264, SL=N/A} -pinAttr CE @attr {FO=32, SL=N/A} -pinAttr CLR @attr {FO=177, SL=N/A} -pinAttr D @attr {FO=1, SL=N/A} -pg 1 -lvl 7 -x 2550 -y 1430
load net <const1> -power -pin FSM_sequential_state_reg[0] CE -pin FSM_sequential_state_reg[1] CE -pin FSM_sequential_state_reg[2] CE -pin dp_OBUF_inst I -pin p1_win_pulse_reg CE -pin p2_win_pulse_reg CE -pin rand_ready_reg CE -pin start_timer_pulse_reg CE -pin stop_timer_pulse_reg CE
load net active_digit[0] -attr @rip active_digit[0] -pin display active_digit[0] -pin rt_inst active_digit[0] -pin sc_inst active_digit[0]
load net active_digit[1] -attr @rip active_digit[1] -pin display active_digit[1] -pin rt_inst active_digit[1] -pin sc_inst active_digit[1]
load net an[0] -attr @rip 0 -port an[0] -pin an_OBUF[0]_inst O
load net an[1] -attr @rip 1 -port an[1] -pin an_OBUF[1]_inst O
load net an[2] -attr @rip 2 -port an[2] -pin an_OBUF[2]_inst O
load net an[3] -attr @rip 3 -port an[3] -pin an_OBUF[3]_inst O
load net an_OBUF[0] -attr @rip an_OBUF[0] -pin an_OBUF[0]_inst I -pin display an_OBUF[0]
load net an_OBUF[1] -attr @rip an_OBUF[1] -pin an_OBUF[1]_inst I -pin display an_OBUF[1]
load net an_OBUF[2] -attr @rip an_OBUF[2] -pin an_OBUF[2]_inst I -pin display an_OBUF[2]
load net an_OBUF[3] -attr @rip an_OBUF[3] -pin an_OBUF[3]_inst I -pin display an_OBUF[3]
load net btnL -port btnL -pin btnL_IBUF_inst I
netloc btnL 1 0 6 NJ 5010 NJ 5010 NJ 5010 NJ 5010 NJ 5010 NJ
load net btnL_IBUF -pin btnL_IBUF_inst O -pin sync_p1 btnL_IBUF
netloc btnL_IBUF 1 6 1 NJ 5010
load net btnR -port btnR -pin btnR_IBUF_inst I
netloc btnR 1 0 4 NJ 5290 NJ 5290 NJ 5290 NJ
load net btnR_IBUF -pin btnR_IBUF_inst O -pin sync_p2 btnR_IBUF
netloc btnR_IBUF 1 4 1 NJ 5290
load net btnU -port btnU -pin btnU_IBUF_inst I
netloc btnU 1 0 2 NJ 5400 NJ
load net btnU_IBUF -pin btnU_IBUF_inst O -pin sync_rst btnU_IBUF
netloc btnU_IBUF 1 2 1 NJ 5400
load net clk -port clk -pin clk_IBUF_inst I
netloc clk 1 0 1 NJ 5470
load net clk_IBUF -pin clk_IBUF_BUFG_inst I -pin clk_IBUF_inst O
netloc clk_IBUF 1 1 1 NJ 5470
load net clk_IBUF_BUFG -pin FSM_sequential_state_reg[0] C -pin FSM_sequential_state_reg[1] C -pin FSM_sequential_state_reg[2] C -pin clk_IBUF_BUFG_inst O -pin db_p1 clk_IBUF_BUFG -pin db_p2 clk_IBUF_BUFG -pin db_rst clk_IBUF_BUFG -pin display clk_IBUF_BUFG -pin p1_win_pulse_reg C -pin p2_win_pulse_reg C -pin rand_inst clk_IBUF_BUFG -pin rand_ready_reg C -pin rt_inst clk_IBUF_BUFG -pin sc_inst clk_IBUF_BUFG -pin start_timer_pulse_reg C -pin stop_timer_pulse_reg C -pin sync_p1 clk_IBUF_BUFG -pin sync_p2 clk_IBUF_BUFG -pin sync_rst clk_IBUF_BUFG -pin target_delay_reg[0] C -pin target_delay_reg[10] C -pin target_delay_reg[11] C -pin target_delay_reg[12] C -pin target_delay_reg[13] C -pin target_delay_reg[14] C -pin target_delay_reg[15] C -pin target_delay_reg[16] C -pin target_delay_reg[17] C -pin target_delay_reg[18] C -pin target_delay_reg[19] C -pin target_delay_reg[1] C -pin target_delay_reg[20] C -pin target_delay_reg[21] C -pin target_delay_reg[22] C -pin target_delay_reg[23] C -pin target_delay_reg[24] C -pin target_delay_reg[25] C -pin target_delay_reg[26] C -pin target_delay_reg[27] C -pin target_delay_reg[28] C -pin target_delay_reg[29] C -pin target_delay_reg[2] C -pin target_delay_reg[3] C -pin target_delay_reg[4] C -pin target_delay_reg[5] C -pin target_delay_reg[6] C -pin target_delay_reg[7] C -pin target_delay_reg[8] C -pin target_delay_reg[9] C -pin timer_reg[0] C -pin timer_reg[10] C -pin timer_reg[11] C -pin timer_reg[12] C -pin timer_reg[13] C -pin timer_reg[14] C -pin timer_reg[15] C -pin timer_reg[16] C -pin timer_reg[17] C -pin timer_reg[18] C -pin timer_reg[19] C -pin timer_reg[1] C -pin timer_reg[20] C -pin timer_reg[21] C -pin timer_reg[22] C -pin timer_reg[23] C -pin timer_reg[24] C -pin timer_reg[25] C -pin timer_reg[26] C -pin timer_reg[27] C -pin timer_reg[28] C -pin timer_reg[29] C -pin timer_reg[2] C -pin timer_reg[30] C -pin timer_reg[31] C -pin timer_reg[3] C -pin timer_reg[4] C -pin timer_reg[5] C -pin timer_reg[6] C -pin timer_reg[7] C -pin timer_reg[8] C -pin timer_reg[9] C
netloc clk_IBUF_BUFG 1 2 9 550 5460 960 5250 1290 5190 1840 5250 2340 5070 2830 5090 3590 4840 4040 4840 4720
load net db_p1_n_1 -pin FSM_sequential_state_reg[2] D -pin db_p1 FSM_sequential_state_reg[0]
netloc db_p1_n_1 1 4 5 1350 5230 NJ 5230 NJ 5230 NJ 5230 3490
load net db_p1_n_10 -attr @rip D[25] -pin db_p1 D[25] -pin timer_reg[25] D
load net db_p1_n_11 -attr @rip D[24] -pin db_p1 D[24] -pin timer_reg[24] D
load net db_p1_n_12 -attr @rip D[23] -pin db_p1 D[23] -pin timer_reg[23] D
load net db_p1_n_13 -attr @rip D[22] -pin db_p1 D[22] -pin timer_reg[22] D
load net db_p1_n_14 -attr @rip D[21] -pin db_p1 D[21] -pin timer_reg[21] D
load net db_p1_n_15 -attr @rip D[20] -pin db_p1 D[20] -pin timer_reg[20] D
load net db_p1_n_16 -attr @rip D[19] -pin db_p1 D[19] -pin timer_reg[19] D
load net db_p1_n_17 -attr @rip D[18] -pin db_p1 D[18] -pin timer_reg[18] D
load net db_p1_n_18 -attr @rip D[17] -pin db_p1 D[17] -pin timer_reg[17] D
load net db_p1_n_19 -attr @rip D[16] -pin db_p1 D[16] -pin timer_reg[16] D
load net db_p1_n_2 -pin db_p1 FSM_sequential_state_reg[0]_0 -pin sc_inst FSM_sequential_state_reg[0]
netloc db_p1_n_2 1 8 2 3550J 4900 3960
load net db_p1_n_20 -attr @rip D[15] -pin db_p1 D[15] -pin timer_reg[15] D
load net db_p1_n_21 -attr @rip D[14] -pin db_p1 D[14] -pin timer_reg[14] D
load net db_p1_n_22 -attr @rip D[13] -pin db_p1 D[13] -pin timer_reg[13] D
load net db_p1_n_23 -attr @rip D[12] -pin db_p1 D[12] -pin timer_reg[12] D
load net db_p1_n_24 -attr @rip D[11] -pin db_p1 D[11] -pin timer_reg[11] D
load net db_p1_n_25 -attr @rip D[10] -pin db_p1 D[10] -pin timer_reg[10] D
load net db_p1_n_26 -attr @rip D[9] -pin db_p1 D[9] -pin timer_reg[9] D
load net db_p1_n_27 -attr @rip D[8] -pin db_p1 D[8] -pin timer_reg[8] D
load net db_p1_n_28 -attr @rip D[7] -pin db_p1 D[7] -pin timer_reg[7] D
load net db_p1_n_29 -attr @rip D[6] -pin db_p1 D[6] -pin timer_reg[6] D
load net db_p1_n_3 -pin FSM_sequential_state_reg[1] D -pin db_p1 FSM_sequential_state_reg[2]
netloc db_p1_n_3 1 4 5 1350 4830 NJ 4830 NJ 4830 NJ 4830 3470
load net db_p1_n_30 -attr @rip D[5] -pin db_p1 D[5] -pin timer_reg[5] D
load net db_p1_n_31 -attr @rip D[4] -pin db_p1 D[4] -pin timer_reg[4] D
load net db_p1_n_32 -attr @rip D[3] -pin db_p1 D[3] -pin timer_reg[3] D
load net db_p1_n_33 -attr @rip D[2] -pin db_p1 D[2] -pin timer_reg[2] D
load net db_p1_n_34 -attr @rip D[1] -pin db_p1 D[1] -pin timer_reg[1] D
load net db_p1_n_35 -attr @rip D[0] -pin db_p1 D[0] -pin timer_reg[0] D
load net db_p1_n_36 -pin db_p1 timer_reg[26] -pin sc_inst rand_ready_reg
netloc db_p1_n_36 1 8 2 3630J 5080 4040
load net db_p1_n_4 -attr @rip D[31] -pin db_p1 D[31] -pin timer_reg[31] D
load net db_p1_n_5 -attr @rip D[30] -pin db_p1 D[30] -pin timer_reg[30] D
load net db_p1_n_6 -attr @rip D[29] -pin db_p1 D[29] -pin timer_reg[29] D
load net db_p1_n_7 -attr @rip D[28] -pin db_p1 D[28] -pin timer_reg[28] D
load net db_p1_n_8 -attr @rip D[27] -pin db_p1 D[27] -pin timer_reg[27] D
load net db_p1_n_9 -attr @rip D[26] -pin db_p1 D[26] -pin timer_reg[26] D
load net db_p2_n_3 -attr @rip E[0] -pin db_p2 E[0] -pin timer_reg[0] CE -pin timer_reg[10] CE -pin timer_reg[11] CE -pin timer_reg[12] CE -pin timer_reg[13] CE -pin timer_reg[14] CE -pin timer_reg[15] CE -pin timer_reg[16] CE -pin timer_reg[17] CE -pin timer_reg[18] CE -pin timer_reg[19] CE -pin timer_reg[1] CE -pin timer_reg[20] CE -pin timer_reg[21] CE -pin timer_reg[22] CE -pin timer_reg[23] CE -pin timer_reg[24] CE -pin timer_reg[25] CE -pin timer_reg[26] CE -pin timer_reg[27] CE -pin timer_reg[28] CE -pin timer_reg[29] CE -pin timer_reg[2] CE -pin timer_reg[30] CE -pin timer_reg[31] CE -pin timer_reg[3] CE -pin timer_reg[4] CE -pin timer_reg[5] CE -pin timer_reg[6] CE -pin timer_reg[7] CE -pin timer_reg[8] CE -pin timer_reg[9] CE
netloc db_p2_n_3 1 6 1 2280 70n
load net display_n_9 -pin display FSM_sequential_state_reg[2] -pin sc_inst seg_OBUF[6]_inst_i_3
netloc display_n_9 1 9 3 4060 5160 NJ 5160 5300
load net dp -port dp -pin dp_OBUF_inst O
netloc dp 1 12 1 NJ 4970
load net p1_score_val[1] -attr @rip Q[0] -pin display Q[0] -pin sc_inst Q[0]
load net p1_score_val[2] -attr @rip Q[1] -pin display Q[1] -pin sc_inst Q[1]
load net p1_score_val[3] -attr @rip Q[2] -pin display Q[2] -pin sc_inst Q[2]
load net p1_stop -pin db_p1 p1_stop -pin db_p2 p1_stop
netloc p1_stop 1 5 4 1860 5050 2320J 5130 2830J 5150 3450
load net p1_win_pulse -pin db_p2 p1_win_pulse -pin p1_win_pulse_reg D
netloc p1_win_pulse 1 6 3 2300 5110 NJ 5110 3510J
load net p1_win_pulse_reg_n_0 -attr @rip 0 -pin p1_win_pulse_reg Q -pin sc_inst p1_score_reg[0]_0[0]
netloc p1_win_pulse_reg_n_0 1 9 1 3940 4610n
load net p2_score_val[1] -attr @rip p2_score_reg[3]_0[0] -pin display seg_OBUF[6]_inst_i_5_0[0] -pin sc_inst p2_score_reg[3]_0[0]
load net p2_score_val[2] -attr @rip p2_score_reg[3]_0[1] -pin display seg_OBUF[6]_inst_i_5_0[1] -pin sc_inst p2_score_reg[3]_0[1]
load net p2_score_val[3] -attr @rip p2_score_reg[3]_0[2] -pin display seg_OBUF[6]_inst_i_5_0[2] -pin sc_inst p2_score_reg[3]_0[2]
load net p2_stop -pin db_p1 p2_stop -pin db_p2 p2_stop
netloc p2_stop 1 6 2 NJ 5150 2790
load net p2_win_pulse -pin db_p1 p2_win_pulse -pin p2_win_pulse_reg D
netloc p2_win_pulse 1 8 1 3530 4790n
load net p2_win_pulse_reg_n_0 -attr @rip 0 -pin p2_win_pulse_reg Q -pin sc_inst p2_score_reg[0]_1[0]
netloc p2_win_pulse_reg_n_0 1 9 1 3900 4760n
load net rand_inst_n_0 -attr @rip D[29] -pin rand_inst D[29] -pin target_delay_reg[29] D
load net rand_inst_n_1 -attr @rip D[28] -pin rand_inst D[28] -pin target_delay_reg[28] D
load net rand_inst_n_10 -attr @rip D[19] -pin rand_inst D[19] -pin target_delay_reg[19] D
load net rand_inst_n_11 -attr @rip D[18] -pin rand_inst D[18] -pin target_delay_reg[18] D
load net rand_inst_n_12 -attr @rip D[17] -pin rand_inst D[17] -pin target_delay_reg[17] D
load net rand_inst_n_13 -attr @rip D[16] -pin rand_inst D[16] -pin target_delay_reg[16] D
load net rand_inst_n_14 -attr @rip D[15] -pin rand_inst D[15] -pin target_delay_reg[15] D
load net rand_inst_n_15 -attr @rip D[14] -pin rand_inst D[14] -pin target_delay_reg[14] D
load net rand_inst_n_16 -attr @rip D[13] -pin rand_inst D[13] -pin target_delay_reg[13] D
load net rand_inst_n_17 -attr @rip D[12] -pin rand_inst D[12] -pin target_delay_reg[12] D
load net rand_inst_n_18 -attr @rip D[11] -pin rand_inst D[11] -pin target_delay_reg[11] D
load net rand_inst_n_19 -attr @rip D[10] -pin rand_inst D[10] -pin target_delay_reg[10] D
load net rand_inst_n_2 -attr @rip D[27] -pin rand_inst D[27] -pin target_delay_reg[27] D
load net rand_inst_n_20 -attr @rip D[9] -pin rand_inst D[9] -pin target_delay_reg[9] D
load net rand_inst_n_21 -attr @rip D[8] -pin rand_inst D[8] -pin target_delay_reg[8] D
load net rand_inst_n_22 -attr @rip D[7] -pin rand_inst D[7] -pin target_delay_reg[7] D
load net rand_inst_n_3 -attr @rip D[26] -pin rand_inst D[26] -pin target_delay_reg[26] D
load net rand_inst_n_4 -attr @rip D[25] -pin rand_inst D[25] -pin target_delay_reg[25] D
load net rand_inst_n_5 -attr @rip D[24] -pin rand_inst D[24] -pin target_delay_reg[24] D
load net rand_inst_n_6 -attr @rip D[23] -pin rand_inst D[23] -pin target_delay_reg[23] D
load net rand_inst_n_7 -attr @rip D[22] -pin rand_inst D[22] -pin target_delay_reg[22] D
load net rand_inst_n_8 -attr @rip D[21] -pin rand_inst D[21] -pin target_delay_reg[21] D
load net rand_inst_n_9 -attr @rip D[20] -pin rand_inst D[20] -pin target_delay_reg[20] D
load net rand_ready_reg_n_0 -pin rand_inst bit_count_reg[0]_0 -pin rand_ready_reg Q
netloc rand_ready_reg_n_0 1 5 1 1760 5380n
load net random_data_output[0] -attr @rip D[0] -pin rand_inst D[0] -pin target_delay_reg[0] D
load net random_data_output[1] -attr @rip D[1] -pin rand_inst D[1] -pin target_delay_reg[1] D
load net random_data_output[2] -attr @rip D[2] -pin rand_inst D[2] -pin target_delay_reg[2] D
load net random_data_output[3] -attr @rip D[3] -pin rand_inst D[3] -pin target_delay_reg[3] D
load net random_data_output[4] -attr @rip D[4] -pin rand_inst D[4] -pin target_delay_reg[4] D
load net random_data_output[5] -attr @rip D[5] -pin rand_inst D[5] -pin target_delay_reg[5] D
load net random_data_output[6] -attr @rip D[6] -pin rand_inst D[6] -pin target_delay_reg[6] D
load net reaction_bcd[0] -attr @rip bcd_thousands_reg[0]_0[0] -pin display reaction_bcd[0] -pin rt_inst bcd_thousands_reg[0]_0[0]
load net reaction_bcd[10] -attr @rip bcd_thousands_reg[0]_0[7] -pin display reaction_bcd[7] -pin rt_inst bcd_thousands_reg[0]_0[7]
load net reaction_bcd[11] -attr @rip bcd_thousands_reg[0]_0[8] -pin display reaction_bcd[8] -pin rt_inst bcd_thousands_reg[0]_0[8]
load net reaction_bcd[12] -attr @rip bcd_thousands_reg[0]_0[9] -pin display reaction_bcd[9] -pin rt_inst bcd_thousands_reg[0]_0[9]
load net reaction_bcd[4] -attr @rip bcd_thousands_reg[0]_0[1] -pin display reaction_bcd[1] -pin rt_inst bcd_thousands_reg[0]_0[1]
load net reaction_bcd[5] -attr @rip bcd_thousands_reg[0]_0[2] -pin display reaction_bcd[2] -pin rt_inst bcd_thousands_reg[0]_0[2]
load net reaction_bcd[6] -attr @rip bcd_thousands_reg[0]_0[3] -pin display reaction_bcd[3] -pin rt_inst bcd_thousands_reg[0]_0[3]
load net reaction_bcd[7] -attr @rip bcd_thousands_reg[0]_0[4] -pin display reaction_bcd[4] -pin rt_inst bcd_thousands_reg[0]_0[4]
load net reaction_bcd[8] -attr @rip bcd_thousands_reg[0]_0[5] -pin display reaction_bcd[5] -pin rt_inst bcd_thousands_reg[0]_0[5]
load net reaction_bcd[9] -attr @rip bcd_thousands_reg[0]_0[6] -pin display reaction_bcd[6] -pin rt_inst bcd_thousands_reg[0]_0[6]
load net rst -attr @rip 0 -pin FSM_sequential_state_reg[0] CLR -pin FSM_sequential_state_reg[1] CLR -pin FSM_sequential_state_reg[2] CLR -pin db_rst rst -pin p1_win_pulse_reg CLR -pin p2_win_pulse_reg CLR -pin rand_inst SR[0] -pin rand_ready_reg CLR -pin rt_inst SR[0] -pin sc_inst SR[0] -pin start_timer_pulse_reg CLR -pin stop_timer_pulse_reg CLR -pin target_delay_reg[0] CLR -pin target_delay_reg[10] CLR -pin target_delay_reg[11] CLR -pin target_delay_reg[12] CLR -pin target_delay_reg[13] PRE -pin target_delay_reg[14] CLR -pin target_delay_reg[15] PRE -pin target_delay_reg[16] PRE -pin target_delay_reg[17] CLR -pin target_delay_reg[18] CLR -pin target_delay_reg[19] CLR -pin target_delay_reg[1] CLR -pin target_delay_reg[20] CLR -pin target_delay_reg[21] PRE -pin target_delay_reg[22] PRE -pin target_delay_reg[23] PRE -pin target_delay_reg[24] PRE -pin target_delay_reg[25] CLR -pin target_delay_reg[26] CLR -pin target_delay_reg[27] CLR -pin target_delay_reg[28] PRE -pin target_delay_reg[29] CLR -pin target_delay_reg[2] CLR -pin target_delay_reg[3] CLR -pin target_delay_reg[4] CLR -pin target_delay_reg[5] CLR -pin target_delay_reg[6] CLR -pin target_delay_reg[7] CLR -pin target_delay_reg[8] PRE -pin target_delay_reg[9] PRE -pin timer_reg[0] CLR -pin timer_reg[10] CLR -pin timer_reg[11] CLR -pin timer_reg[12] CLR -pin timer_reg[13] CLR -pin timer_reg[14] CLR -pin timer_reg[15] CLR -pin timer_reg[16] CLR -pin timer_reg[17] CLR -pin timer_reg[18] CLR -pin timer_reg[19] CLR -pin timer_reg[1] CLR -pin timer_reg[20] CLR -pin timer_reg[21] CLR -pin timer_reg[22] CLR -pin timer_reg[23] CLR -pin timer_reg[24] CLR -pin timer_reg[25] CLR -pin timer_reg[26] CLR -pin timer_reg[27] CLR -pin timer_reg[28] CLR -pin timer_reg[29] CLR -pin timer_reg[2] CLR -pin timer_reg[30] CLR -pin timer_reg[31] CLR -pin timer_reg[3] CLR -pin timer_reg[4] CLR -pin timer_reg[5] CLR -pin timer_reg[6] CLR -pin timer_reg[7] CLR -pin timer_reg[8] CLR -pin timer_reg[9] CLR
netloc rst 1 4 6 1310 5210 1780 5440 2360 5250 NJ 5250 3570 4880 4020
load net rt_inst_n_10 -pin display seg_OBUF[3]_inst_i_1_1 -pin rt_inst bcd_thousands_reg[1]_0
netloc rt_inst_n_10 1 10 1 4740 4740n
load net rt_inst_n_11 -pin display seg_OBUF[3]_inst_i_1_2 -pin rt_inst bcd_thousands_reg[2]_0
netloc rt_inst_n_11 1 10 1 4700 4760n
load net rt_inst_n_12 -pin display seg_OBUF[3]_inst_i_1_3 -pin rt_inst bcd_thousands_reg[3]_0
netloc rt_inst_n_12 1 10 1 4660 4780n
load net sc_inst_n_0 -pin FSM_sequential_state_reg[0] D -pin sc_inst FSM_sequential_state_reg[1]
netloc sc_inst_n_0 1 4 7 1330 4850 NJ 4850 NJ 4850 NJ 4850 3550J 4860 NJ 4860 4620
load net sc_inst_n_8 -pin display seg_OBUF[3]_inst_i_1_0 -pin sc_inst p2_score_reg[0]_0
netloc sc_inst_n_8 1 10 1 4640 5000n
load net seg[0] -attr @rip 0 -port seg[0] -pin seg_OBUF[0]_inst O
load net seg[1] -attr @rip 1 -port seg[1] -pin seg_OBUF[1]_inst O
load net seg[2] -attr @rip 2 -port seg[2] -pin seg_OBUF[2]_inst O
load net seg[3] -attr @rip 3 -port seg[3] -pin seg_OBUF[3]_inst O
load net seg[4] -attr @rip 4 -port seg[4] -pin seg_OBUF[4]_inst O
load net seg[5] -attr @rip 5 -port seg[5] -pin seg_OBUF[5]_inst O
load net seg[6] -attr @rip 6 -port seg[6] -pin seg_OBUF[6]_inst O
load net seg_OBUF[0] -attr @rip seg_OBUF[0] -pin display seg_OBUF[0] -pin seg_OBUF[0]_inst I
load net seg_OBUF[1] -attr @rip seg_OBUF[1] -pin display seg_OBUF[1] -pin seg_OBUF[1]_inst I
load net seg_OBUF[2] -attr @rip seg_OBUF[2] -pin display seg_OBUF[2] -pin seg_OBUF[2]_inst I
load net seg_OBUF[3] -attr @rip seg_OBUF[3] -pin display seg_OBUF[3] -pin seg_OBUF[3]_inst I
load net seg_OBUF[4] -attr @rip seg_OBUF[4] -pin display seg_OBUF[4] -pin seg_OBUF[4]_inst I
load net seg_OBUF[5] -attr @rip seg_OBUF[5] -pin display seg_OBUF[5] -pin seg_OBUF[5]_inst I
load net seg_OBUF[6] -attr @rip seg_OBUF[6] -pin display seg_OBUF[6] -pin seg_OBUF[6]_inst I
load net start_timer_pulse -pin db_p1 start_timer_pulse -pin start_timer_pulse_reg D
netloc start_timer_pulse 1 8 1 N 5030
load net start_timer_pulse_reg_n_0 -pin rt_inst timer_running_reg_0 -pin start_timer_pulse_reg Q
netloc start_timer_pulse_reg_n_0 1 9 1 3920 4780n
load net state[0] -attr @rip 0 -pin FSM_sequential_state_reg[0] Q -pin db_p1 state[0] -pin db_p2 state[0] -pin display state[0] -pin sc_inst state[0]
load net state[1] -attr @rip 1 -pin FSM_sequential_state_reg[1] Q -pin db_p1 state[1] -pin db_p2 state[1] -pin display state[1] -pin sc_inst state[1]
load net state[2] -pin FSM_sequential_state_reg[2] Q -pin db_p1 state[2] -pin db_p2 state[2] -pin display state[2] -pin rt_inst state[0] -pin sc_inst state[2]
load net stop_timer_pulse -pin db_p2 stop_timer_pulse -pin stop_timer_pulse_reg D
netloc stop_timer_pulse 1 6 3 NJ 5170 NJ 5170 3530
load net stop_timer_pulse_reg_n_0 -pin rt_inst timer_running_reg_1 -pin stop_timer_pulse_reg Q
netloc stop_timer_pulse_reg_n_0 1 9 1 4000 4800n
load net sync_p1_n_0 -pin db_p1 sync_1_reg_0 -pin sync_p1 stage1_reg_reg_0
netloc sync_p1_n_0 1 7 1 2810 5010n
load net sync_p2_n_0 -pin db_p2 sync_1_reg_0 -pin sync_p2 stage1_reg_reg_0
netloc sync_p2_n_0 1 5 1 1800 5170n
load net sync_rst_n_0 -pin db_rst sync_1_reg_0 -pin sync_rst stage1_reg_reg_0
netloc sync_rst_n_0 1 3 1 N 5400
load net target_delay -attr @rip E[0] -pin rand_ready_reg D -pin sc_inst E[0] -pin target_delay_reg[0] CE -pin target_delay_reg[10] CE -pin target_delay_reg[11] CE -pin target_delay_reg[12] CE -pin target_delay_reg[13] CE -pin target_delay_reg[14] CE -pin target_delay_reg[15] CE -pin target_delay_reg[16] CE -pin target_delay_reg[17] CE -pin target_delay_reg[18] CE -pin target_delay_reg[19] CE -pin target_delay_reg[1] CE -pin target_delay_reg[20] CE -pin target_delay_reg[21] CE -pin target_delay_reg[22] CE -pin target_delay_reg[23] CE -pin target_delay_reg[24] CE -pin target_delay_reg[25] CE -pin target_delay_reg[26] CE -pin target_delay_reg[27] CE -pin target_delay_reg[28] CE -pin target_delay_reg[29] CE -pin target_delay_reg[2] CE -pin target_delay_reg[3] CE -pin target_delay_reg[4] CE -pin target_delay_reg[5] CE -pin target_delay_reg[6] CE -pin target_delay_reg[7] CE -pin target_delay_reg[8] CE -pin target_delay_reg[9] CE
netloc target_delay 1 4 7 1350 5510 NJ 5510 2300 5270 NJ 5270 3450J 5280 NJ 5280 4600
load net target_delay_reg_n_0_[0] -attr @rip 0 -pin db_p1 start_timer_pulse_reg_i_2_0[0] -pin target_delay_reg[0] Q
load net target_delay_reg_n_0_[10] -attr @rip 10 -pin db_p1 start_timer_pulse_reg_i_2_0[10] -pin target_delay_reg[10] Q
load net target_delay_reg_n_0_[11] -attr @rip 11 -pin db_p1 start_timer_pulse_reg_i_2_0[11] -pin target_delay_reg[11] Q
load net target_delay_reg_n_0_[12] -attr @rip 12 -pin db_p1 start_timer_pulse_reg_i_2_0[12] -pin target_delay_reg[12] Q
load net target_delay_reg_n_0_[13] -attr @rip 13 -pin db_p1 start_timer_pulse_reg_i_2_0[13] -pin target_delay_reg[13] Q
load net target_delay_reg_n_0_[14] -attr @rip 14 -pin db_p1 start_timer_pulse_reg_i_2_0[14] -pin target_delay_reg[14] Q
load net target_delay_reg_n_0_[15] -attr @rip 15 -pin db_p1 start_timer_pulse_reg_i_2_0[15] -pin target_delay_reg[15] Q
load net target_delay_reg_n_0_[16] -attr @rip 16 -pin db_p1 start_timer_pulse_reg_i_2_0[16] -pin target_delay_reg[16] Q
load net target_delay_reg_n_0_[17] -attr @rip 17 -pin db_p1 start_timer_pulse_reg_i_2_0[17] -pin target_delay_reg[17] Q
load net target_delay_reg_n_0_[18] -attr @rip 18 -pin db_p1 start_timer_pulse_reg_i_2_0[18] -pin target_delay_reg[18] Q
load net target_delay_reg_n_0_[19] -attr @rip 19 -pin db_p1 start_timer_pulse_reg_i_2_0[19] -pin target_delay_reg[19] Q
load net target_delay_reg_n_0_[1] -attr @rip 1 -pin db_p1 start_timer_pulse_reg_i_2_0[1] -pin target_delay_reg[1] Q
load net target_delay_reg_n_0_[20] -attr @rip 20 -pin db_p1 start_timer_pulse_reg_i_2_0[20] -pin target_delay_reg[20] Q
load net target_delay_reg_n_0_[21] -attr @rip 21 -pin db_p1 start_timer_pulse_reg_i_2_0[21] -pin target_delay_reg[21] Q
load net target_delay_reg_n_0_[22] -attr @rip 22 -pin db_p1 start_timer_pulse_reg_i_2_0[22] -pin target_delay_reg[22] Q
load net target_delay_reg_n_0_[23] -attr @rip 23 -pin db_p1 start_timer_pulse_reg_i_2_0[23] -pin target_delay_reg[23] Q
load net target_delay_reg_n_0_[24] -attr @rip 24 -pin db_p1 start_timer_pulse_reg_i_2_0[24] -pin target_delay_reg[24] Q
load net target_delay_reg_n_0_[25] -attr @rip 25 -pin db_p1 start_timer_pulse_reg_i_2_0[25] -pin target_delay_reg[25] Q
load net target_delay_reg_n_0_[26] -attr @rip 26 -pin db_p1 start_timer_pulse_reg_i_2_0[26] -pin target_delay_reg[26] Q
load net target_delay_reg_n_0_[27] -attr @rip 27 -pin db_p1 start_timer_pulse_reg_i_2_0[27] -pin target_delay_reg[27] Q
load net target_delay_reg_n_0_[28] -attr @rip 28 -pin db_p1 start_timer_pulse_reg_i_2_0[28] -pin target_delay_reg[28] Q
load net target_delay_reg_n_0_[29] -attr @rip 29 -pin db_p1 start_timer_pulse_reg_i_2_0[29] -pin target_delay_reg[29] Q
load net target_delay_reg_n_0_[2] -attr @rip 2 -pin db_p1 start_timer_pulse_reg_i_2_0[2] -pin target_delay_reg[2] Q
load net target_delay_reg_n_0_[3] -attr @rip 3 -pin db_p1 start_timer_pulse_reg_i_2_0[3] -pin target_delay_reg[3] Q
load net target_delay_reg_n_0_[4] -attr @rip 4 -pin db_p1 start_timer_pulse_reg_i_2_0[4] -pin target_delay_reg[4] Q
load net target_delay_reg_n_0_[5] -attr @rip 5 -pin db_p1 start_timer_pulse_reg_i_2_0[5] -pin target_delay_reg[5] Q
load net target_delay_reg_n_0_[6] -attr @rip 6 -pin db_p1 start_timer_pulse_reg_i_2_0[6] -pin target_delay_reg[6] Q
load net target_delay_reg_n_0_[7] -attr @rip 7 -pin db_p1 start_timer_pulse_reg_i_2_0[7] -pin target_delay_reg[7] Q
load net target_delay_reg_n_0_[8] -attr @rip 8 -pin db_p1 start_timer_pulse_reg_i_2_0[8] -pin target_delay_reg[8] Q
load net target_delay_reg_n_0_[9] -attr @rip 9 -pin db_p1 start_timer_pulse_reg_i_2_0[9] -pin target_delay_reg[9] Q
load net timer_reg_n_0_[0] -attr @rip 0 -pin db_p1 Q[0] -pin timer_reg[0] Q
load net timer_reg_n_0_[10] -attr @rip 10 -pin db_p1 Q[10] -pin timer_reg[10] Q
load net timer_reg_n_0_[11] -attr @rip 11 -pin db_p1 Q[11] -pin timer_reg[11] Q
load net timer_reg_n_0_[12] -attr @rip 12 -pin db_p1 Q[12] -pin timer_reg[12] Q
load net timer_reg_n_0_[13] -attr @rip 13 -pin db_p1 Q[13] -pin timer_reg[13] Q
load net timer_reg_n_0_[14] -attr @rip 14 -pin db_p1 Q[14] -pin timer_reg[14] Q
load net timer_reg_n_0_[15] -attr @rip 15 -pin db_p1 Q[15] -pin timer_reg[15] Q
load net timer_reg_n_0_[16] -attr @rip 16 -pin db_p1 Q[16] -pin timer_reg[16] Q
load net timer_reg_n_0_[17] -attr @rip 17 -pin db_p1 Q[17] -pin timer_reg[17] Q
load net timer_reg_n_0_[18] -attr @rip 18 -pin db_p1 Q[18] -pin timer_reg[18] Q
load net timer_reg_n_0_[19] -attr @rip 19 -pin db_p1 Q[19] -pin timer_reg[19] Q
load net timer_reg_n_0_[1] -attr @rip 1 -pin db_p1 Q[1] -pin timer_reg[1] Q
load net timer_reg_n_0_[20] -attr @rip 20 -pin db_p1 Q[20] -pin timer_reg[20] Q
load net timer_reg_n_0_[21] -attr @rip 21 -pin db_p1 Q[21] -pin timer_reg[21] Q
load net timer_reg_n_0_[22] -attr @rip 22 -pin db_p1 Q[22] -pin timer_reg[22] Q
load net timer_reg_n_0_[23] -attr @rip 23 -pin db_p1 Q[23] -pin timer_reg[23] Q
load net timer_reg_n_0_[24] -attr @rip 24 -pin db_p1 Q[24] -pin timer_reg[24] Q
load net timer_reg_n_0_[25] -attr @rip 25 -pin db_p1 Q[25] -pin timer_reg[25] Q
load net timer_reg_n_0_[26] -attr @rip 26 -pin db_p1 Q[26] -pin timer_reg[26] Q
load net timer_reg_n_0_[27] -attr @rip 27 -pin db_p1 Q[27] -pin timer_reg[27] Q
load net timer_reg_n_0_[28] -attr @rip 28 -pin db_p1 Q[28] -pin timer_reg[28] Q
load net timer_reg_n_0_[29] -attr @rip 29 -pin db_p1 Q[29] -pin timer_reg[29] Q
load net timer_reg_n_0_[2] -attr @rip 2 -pin db_p1 Q[2] -pin timer_reg[2] Q
load net timer_reg_n_0_[30] -attr @rip 30 -pin db_p1 Q[30] -pin timer_reg[30] Q
load net timer_reg_n_0_[31] -attr @rip 31 -pin db_p1 Q[31] -pin timer_reg[31] Q
load net timer_reg_n_0_[3] -attr @rip 3 -pin db_p1 Q[3] -pin timer_reg[3] Q
load net timer_reg_n_0_[4] -attr @rip 4 -pin db_p1 Q[4] -pin timer_reg[4] Q
load net timer_reg_n_0_[5] -attr @rip 5 -pin db_p1 Q[5] -pin timer_reg[5] Q
load net timer_reg_n_0_[6] -attr @rip 6 -pin db_p1 Q[6] -pin timer_reg[6] Q
load net timer_reg_n_0_[7] -attr @rip 7 -pin db_p1 Q[7] -pin timer_reg[7] Q
load net timer_reg_n_0_[8] -attr @rip 8 -pin db_p1 Q[8] -pin timer_reg[8] Q
load net timer_reg_n_0_[9] -attr @rip 9 -pin db_p1 Q[9] -pin timer_reg[9] Q
load netBundle @an 4 an[3] an[2] an[1] an[0] -autobundled
netbloc @an 1 12 1 5640 4680n
load netBundle @seg 7 seg[6] seg[5] seg[4] seg[3] seg[2] seg[1] seg[0] -autobundled
netbloc @seg 1 12 1 5640 5040n
load netBundle @db_p1_n_ 32 db_p1_n_4 db_p1_n_5 db_p1_n_6 db_p1_n_7 db_p1_n_8 db_p1_n_9 db_p1_n_10 db_p1_n_11 db_p1_n_12 db_p1_n_13 db_p1_n_14 db_p1_n_15 db_p1_n_16 db_p1_n_17 db_p1_n_18 db_p1_n_19 db_p1_n_20 db_p1_n_21 db_p1_n_22 db_p1_n_23 db_p1_n_24 db_p1_n_25 db_p1_n_26 db_p1_n_27 db_p1_n_28 db_p1_n_29 db_p1_n_30 db_p1_n_31 db_p1_n_32 db_p1_n_33 db_p1_n_34 db_p1_n_35 -autobundled
netbloc @db_p1_n_ 1 6 3 2380 4810 NJ 4810 3450
load netBundle @active_digit 2 active_digit[1] active_digit[0] -autobundled
netbloc @active_digit 1 9 3 4060 4880 NJ 4880 5320
load netBundle @an_OBUF 4 an_OBUF[3] an_OBUF[2] an_OBUF[1] an_OBUF[0] -autobundled
netbloc @an_OBUF 1 11 1 5340 4680n
load netBundle @seg_OBUF 7 seg_OBUF[6] seg_OBUF[5] seg_OBUF[4] seg_OBUF[3] seg_OBUF[2] seg_OBUF[1] seg_OBUF[0] -autobundled
netbloc @seg_OBUF 1 11 1 5360 5040n
load netBundle @rand_inst_n_ 30 rand_inst_n_0 rand_inst_n_1 rand_inst_n_2 rand_inst_n_3 rand_inst_n_4 rand_inst_n_5 rand_inst_n_6 rand_inst_n_7 rand_inst_n_8 rand_inst_n_9 rand_inst_n_10 rand_inst_n_11 rand_inst_n_12 rand_inst_n_13 rand_inst_n_14 rand_inst_n_15 rand_inst_n_16 rand_inst_n_17 rand_inst_n_18 rand_inst_n_19 rand_inst_n_20 rand_inst_n_21 rand_inst_n_22 random_data_output[6] random_data_output[5] random_data_output[4] random_data_output[3] random_data_output[2] random_data_output[1] random_data_output[0] -autobundled
netbloc @rand_inst_n_ 1 6 1 2280 5380n
load netBundle @reaction_bcd 10 reaction_bcd[12] reaction_bcd[11] reaction_bcd[10] reaction_bcd[9] reaction_bcd[8] reaction_bcd[7] reaction_bcd[6] reaction_bcd[5] reaction_bcd[4] reaction_bcd[0] -autobundled
netbloc @reaction_bcd 1 10 1 4760 4720n
load netBundle @p1_score_val 3 p1_score_val[3] p1_score_val[2] p1_score_val[1] -autobundled
netbloc @p1_score_val 1 10 1 4680 4940n
load netBundle @p2_score_val 3 p2_score_val[3] p2_score_val[2] p2_score_val[1] -autobundled
netbloc @p2_score_val 1 10 1 4640 5060n
load netBundle @timer_reg_n_0_ 32 timer_reg_n_0_[31] timer_reg_n_0_[30] timer_reg_n_0_[29] timer_reg_n_0_[28] timer_reg_n_0_[27] timer_reg_n_0_[26] timer_reg_n_0_[25] timer_reg_n_0_[24] timer_reg_n_0_[23] timer_reg_n_0_[22] timer_reg_n_0_[21] timer_reg_n_0_[20] timer_reg_n_0_[19] timer_reg_n_0_[18] timer_reg_n_0_[17] timer_reg_n_0_[16] timer_reg_n_0_[15] timer_reg_n_0_[14] timer_reg_n_0_[13] timer_reg_n_0_[12] timer_reg_n_0_[11] timer_reg_n_0_[10] timer_reg_n_0_[9] timer_reg_n_0_[8] timer_reg_n_0_[7] timer_reg_n_0_[6] timer_reg_n_0_[5] timer_reg_n_0_[4] timer_reg_n_0_[3] timer_reg_n_0_[2] timer_reg_n_0_[1] timer_reg_n_0_[0] -autobundled
netbloc @timer_reg_n_0_ 1 7 1 2790 80n
load netBundle @target_delay_reg_n_0_ 30 target_delay_reg_n_0_[29] target_delay_reg_n_0_[28] target_delay_reg_n_0_[27] target_delay_reg_n_0_[26] target_delay_reg_n_0_[25] target_delay_reg_n_0_[24] target_delay_reg_n_0_[23] target_delay_reg_n_0_[22] target_delay_reg_n_0_[21] target_delay_reg_n_0_[20] target_delay_reg_n_0_[19] target_delay_reg_n_0_[18] target_delay_reg_n_0_[17] target_delay_reg_n_0_[16] target_delay_reg_n_0_[15] target_delay_reg_n_0_[14] target_delay_reg_n_0_[13] target_delay_reg_n_0_[12] target_delay_reg_n_0_[11] target_delay_reg_n_0_[10] target_delay_reg_n_0_[9] target_delay_reg_n_0_[8] target_delay_reg_n_0_[7] target_delay_reg_n_0_[6] target_delay_reg_n_0_[5] target_delay_reg_n_0_[4] target_delay_reg_n_0_[3] target_delay_reg_n_0_[2] target_delay_reg_n_0_[1] target_delay_reg_n_0_[0] -autobundled
netbloc @target_delay_reg_n_0_ 1 7 1 2850 4990n
load netBundle @state 3 state[2] state[1] state[0] -autobundled
netbloc @state 1 5 6 1820 5210 NJ 5210 2870 5130 3610J 5100 3980 5140 4760J
levelinfo -pg 1 0 120 370 720 1130 1520 2040 2550 3140 3740 4300 5000 5480 5660
pagesize -pg 1 -db -bbox -sgen -80 0 5760 9780
show
zoom 0.169106
scrollpos -134 478
#
# initialize ictrl to current module top work:top:NOFILE
ictrl init topinfo |

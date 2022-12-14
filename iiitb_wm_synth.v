/* Generated by Yosys 0.20+22 (git sha1 c26b2bf543a, clang 6.0.0-1ubuntu2 -fPIC -Os) */

module iiitb_wm(clk, reset, door_close, start, filled, detergent_added, cycle_timeout, drained, spin_timeout, door_lock, motor_on, fill_value_on, drain_value_on, done, soap_wash, water_wash);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  input clk;
  wire clk;
  wire [2:0] current_state;
  input cycle_timeout;
  wire cycle_timeout;
  input detergent_added;
  wire detergent_added;
  output done;
  wire done;
  input door_close;
  wire door_close;
  output door_lock;
  wire door_lock;
  output drain_value_on;
  wire drain_value_on;
  input drained;
  wire drained;
  output fill_value_on;
  wire fill_value_on;
  input filled;
  wire filled;
  output motor_on;
  wire motor_on;
  input reset;
  wire reset;
  output soap_wash;
  wire soap_wash;
  input spin_timeout;
  wire spin_timeout;
  input start;
  wire start;
  output water_wash;
  wire water_wash;
  sky130_fd_sc_hd__clkinv_1 _049_ (
    .A(current_state[2]),
    .Y(_006_)
  );
  sky130_fd_sc_hd__clkinv_1 _050_ (
    .A(current_state[1]),
    .Y(_007_)
  );
  sky130_fd_sc_hd__nand3_1 _051_ (
    .A(_006_),
    .B(_007_),
    .C(current_state[0]),
    .Y(_008_)
  );
  sky130_fd_sc_hd__nand3b_1 _052_ (
    .A_N(current_state[1]),
    .B(current_state[2]),
    .C(current_state[0]),
    .Y(_009_)
  );
  sky130_fd_sc_hd__o22ai_1 _053_ (
    .A1(spin_timeout),
    .A2(_009_),
    .B1(filled),
    .B2(_008_),
    .Y(_010_)
  );
  sky130_fd_sc_hd__clkinv_1 _054_ (
    .A(current_state[0]),
    .Y(_011_)
  );
  sky130_fd_sc_hd__clkinv_1 _055_ (
    .A(detergent_added),
    .Y(_012_)
  );
  sky130_fd_sc_hd__nand4_1 _056_ (
    .A(_006_),
    .B(_011_),
    .C(_012_),
    .D(current_state[1]),
    .Y(_013_)
  );
  sky130_fd_sc_hd__clkinv_1 _057_ (
    .A(drained),
    .Y(_014_)
  );
  sky130_fd_sc_hd__nor2_1 _058_ (
    .A(current_state[1]),
    .B(current_state[0]),
    .Y(_015_)
  );
  sky130_fd_sc_hd__nand3_1 _059_ (
    .A(_015_),
    .B(current_state[2]),
    .C(_014_),
    .Y(_016_)
  );
  sky130_fd_sc_hd__clkinv_1 _060_ (
    .A(cycle_timeout),
    .Y(_017_)
  );
  sky130_fd_sc_hd__nand4_1 _061_ (
    .A(_006_),
    .B(_017_),
    .C(current_state[1]),
    .D(current_state[0]),
    .Y(_018_)
  );
  sky130_fd_sc_hd__nand2_1 _062_ (
    .A(door_close),
    .B(start),
    .Y(_019_)
  );
  sky130_fd_sc_hd__nand3_1 _063_ (
    .A(_015_),
    .B(_006_),
    .C(_019_),
    .Y(_020_)
  );
  sky130_fd_sc_hd__nand4_1 _064_ (
    .A(_013_),
    .B(_018_),
    .C(_016_),
    .D(_020_),
    .Y(_021_)
  );
  sky130_fd_sc_hd__o21bai_1 _065_ (
    .A1(_010_),
    .A2(_021_),
    .B1_N(_006_),
    .Y(_022_)
  );
  sky130_fd_sc_hd__nand3_1 _066_ (
    .A(_006_),
    .B(current_state[1]),
    .C(current_state[0]),
    .Y(_023_)
  );
  sky130_fd_sc_hd__o21a_1 _067_ (
    .A1(cycle_timeout),
    .A2(_023_),
    .B1(_016_),
    .X(_024_)
  );
  sky130_fd_sc_hd__clkinv_1 _068_ (
    .A(filled),
    .Y(_025_)
  );
  sky130_fd_sc_hd__nor3b_1 _069_ (
    .A(current_state[2]),
    .B(current_state[1]),
    .C_N(current_state[0]),
    .Y(_026_)
  );
  sky130_fd_sc_hd__a2bb2oi_1 _070_ (
    .A1_N(spin_timeout),
    .A2_N(_009_),
    .B1(_025_),
    .B2(_026_),
    .Y(_027_)
  );
  sky130_fd_sc_hd__nor3b_1 _071_ (
    .A(current_state[2]),
    .B(current_state[0]),
    .C_N(current_state[1]),
    .Y(_028_)
  );
  sky130_fd_sc_hd__a32oi_1 _072_ (
    .A1(_006_),
    .A2(_015_),
    .A3(_019_),
    .B1(_028_),
    .B2(_012_),
    .Y(_029_)
  );
  sky130_fd_sc_hd__clkinv_1 _073_ (
    .A(water_wash),
    .Y(_030_)
  );
  sky130_fd_sc_hd__nand2_1 _074_ (
    .A(_015_),
    .B(current_state[2]),
    .Y(_031_)
  );
  sky130_fd_sc_hd__o21ai_0 _075_ (
    .A1(_030_),
    .A2(_031_),
    .B1(_023_),
    .Y(_032_)
  );
  sky130_fd_sc_hd__nand4_1 _076_ (
    .A(_024_),
    .B(_027_),
    .C(_032_),
    .D(_029_),
    .Y(_033_)
  );
  sky130_fd_sc_hd__nand2_1 _077_ (
    .A(_022_),
    .B(_033_),
    .Y(_005_)
  );
  sky130_fd_sc_hd__o21bai_1 _078_ (
    .A1(_010_),
    .A2(_021_),
    .B1_N(_007_),
    .Y(_034_)
  );
  sky130_fd_sc_hd__nand3_1 _079_ (
    .A(_006_),
    .B(_011_),
    .C(current_state[1]),
    .Y(_035_)
  );
  sky130_fd_sc_hd__nand2_1 _080_ (
    .A(_008_),
    .B(_035_),
    .Y(_036_)
  );
  sky130_fd_sc_hd__nand4_1 _081_ (
    .A(_024_),
    .B(_027_),
    .C(_029_),
    .D(_036_),
    .Y(_037_)
  );
  sky130_fd_sc_hd__nand2_1 _082_ (
    .A(_034_),
    .B(_037_),
    .Y(_004_)
  );
  sky130_fd_sc_hd__o21bai_1 _083_ (
    .A1(_010_),
    .A2(_021_),
    .B1_N(_011_),
    .Y(_038_)
  );
  sky130_fd_sc_hd__nand2_1 _084_ (
    .A(_007_),
    .B(_011_),
    .Y(_039_)
  );
  sky130_fd_sc_hd__nand4_1 _085_ (
    .A(_007_),
    .B(current_state[2]),
    .C(current_state[0]),
    .D(door_close),
    .Y(_040_)
  );
  sky130_fd_sc_hd__nand4_1 _086_ (
    .A(_006_),
    .B(_007_),
    .C(current_state[0]),
    .D(soap_wash),
    .Y(_041_)
  );
  sky130_fd_sc_hd__nand4_1 _087_ (
    .A(_041_),
    .B(_035_),
    .C(_040_),
    .D(_039_),
    .Y(_042_)
  );
  sky130_fd_sc_hd__nand4_1 _088_ (
    .A(_024_),
    .B(_027_),
    .C(_029_),
    .D(_042_),
    .Y(_043_)
  );
  sky130_fd_sc_hd__nand2_1 _089_ (
    .A(_038_),
    .B(_043_),
    .Y(_003_)
  );
  sky130_fd_sc_hd__clkinv_1 _090_ (
    .A(_018_),
    .Y(motor_on)
  );
  sky130_fd_sc_hd__nor2_1 _091_ (
    .A(filled),
    .B(_008_),
    .Y(fill_value_on)
  );
  sky130_fd_sc_hd__nor2_1 _092_ (
    .A(current_state[1]),
    .B(_006_),
    .Y(_044_)
  );
  sky130_fd_sc_hd__a21oi_1 _093_ (
    .A1(_006_),
    .A2(current_state[1]),
    .B1(_044_),
    .Y(_045_)
  );
  sky130_fd_sc_hd__nand3_1 _094_ (
    .A(_026_),
    .B(filled),
    .C(soap_wash),
    .Y(_046_)
  );
  sky130_fd_sc_hd__nand2_1 _095_ (
    .A(_045_),
    .B(_046_),
    .Y(soap_wash)
  );
  sky130_fd_sc_hd__nand4_1 _096_ (
    .A(_015_),
    .B(current_state[2]),
    .C(drained),
    .D(water_wash),
    .Y(_047_)
  );
  sky130_fd_sc_hd__o2111ai_1 _097_ (
    .A1(_030_),
    .A2(_023_),
    .B1(_009_),
    .C1(_047_),
    .D1(_046_),
    .Y(water_wash)
  );
  sky130_fd_sc_hd__o311ai_0 _098_ (
    .A1(current_state[2]),
    .A2(_019_),
    .A3(_039_),
    .B1(_008_),
    .C1(_045_),
    .Y(door_lock)
  );
  sky130_fd_sc_hd__o21ai_0 _099_ (
    .A1(spin_timeout),
    .A2(_009_),
    .B1(_047_),
    .Y(drain_value_on)
  );
  sky130_fd_sc_hd__clkinv_1 _100_ (
    .A(spin_timeout),
    .Y(_048_)
  );
  sky130_fd_sc_hd__nor2_1 _101_ (
    .A(_048_),
    .B(_009_),
    .Y(done)
  );
  sky130_fd_sc_hd__clkinv_1 _102_ (
    .A(reset),
    .Y(_000_)
  );
  sky130_fd_sc_hd__clkinv_1 _103_ (
    .A(reset),
    .Y(_001_)
  );
  sky130_fd_sc_hd__clkinv_1 _104_ (
    .A(reset),
    .Y(_002_)
  );
  sky130_fd_sc_hd__dfrtp_1 _105_ (
    .CLK(clk),
    .D(_003_),
    .Q(current_state[0]),
    .RESET_B(_000_)
  );
  sky130_fd_sc_hd__dfrtp_1 _106_ (
    .CLK(clk),
    .D(_004_),
    .Q(current_state[1]),
    .RESET_B(_001_)
  );
  sky130_fd_sc_hd__dfrtp_1 _107_ (
    .CLK(clk),
    .D(_005_),
    .Q(current_state[2]),
    .RESET_B(_002_)
  );
endmodule

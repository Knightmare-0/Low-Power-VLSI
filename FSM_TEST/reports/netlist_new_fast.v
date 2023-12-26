
// Generated by Cadence Genus(TM) Synthesis Solution 20.10-p001_1
// Generated on: Nov 23 2023 11:30:08 IST (Nov 23 2023 06:00:08 UTC)

// Verification Directory fv/fsm_1101 

module fsm_1101(x, clk, reset, y);
  input x, clk, reset;
  output y;
  wire x, clk, reset;
  wire y;
  wire [1:0] p_st;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_7, n_8;
  wire n_12;
  DFFR_X1 \p_st_reg[0] (.RN (n_8), .CK (clk), .D (n_7), .Q (p_st[0]),
       .QN (n_0));
  SDFFR_X1 \p_st_reg[1] (.RN (n_8), .CK (clk), .D (n_5), .SE (p_st[1]),
       .SI (n_2), .Q (p_st[1]), .QN (n_1));
  OAI21_X1 g169(.A (n_4), .B1 (p_st[0]), .B2 (n_1), .ZN (n_7));
  AND2_X1 g170(.A1 (n_5), .A2 (p_st[1]), .ZN (y));
  OAI21_X1 g171(.A (n_3), .B1 (p_st[1]), .B2 (n_0), .ZN (n_4));
  AND2_X1 g172(.A1 (n_3), .A2 (p_st[0]), .ZN (n_5));
  NOR2_X1 g173(.A1 (n_3), .A2 (p_st[0]), .ZN (n_2));
  BUF_X2 g176(.A (n_12), .Z (n_3));
  INV_X1 g174(.A (reset), .ZN (n_8));
  BUF_X2 drc_bufs(.A (x), .Z (n_12));
endmodule

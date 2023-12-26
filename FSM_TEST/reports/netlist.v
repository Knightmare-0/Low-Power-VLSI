
// Generated by Cadence Genus(TM) Synthesis Solution 20.10-p001_1
// Generated on: Nov 22 2023 22:19:40 IST (Nov 22 2023 16:49:40 UTC)

// Verification Directory fv/fsm_1101 

module fsm_1101(x, clk, reset, y);
  input x, clk, reset;
  output y;
  wire x, clk, reset;
  wire y;
  wire [1:0] p_st;
  wire UNCONNECTED, n_1, n_9, n_23, n_52, n_54, n_63, n_64;
  wire n_67, n_68, n_132;
  DFFR_X1 \p_st_reg[0] (.RN (n_9), .CK (clk), .D (n_64), .Q (p_st[0]),
       .QN (n_52));
  SDFFR_X1 \p_st_reg[1] (.RN (n_9), .CK (clk), .D (n_54), .SE (n_132),
       .SI (n_68), .Q (p_st[1]), .QN (UNCONNECTED));
  NAND2_X1 g159(.A1 (p_st[0]), .A2 (p_st[1]), .ZN (n_1));
  INV_X1 g162(.A (reset), .ZN (n_9));
  NOR2_X1 g28(.A1 (n_23), .A2 (n_1), .ZN (y));
  INV_X8 fopt31(.A (x), .ZN (n_23));
  NOR2_X1 g192(.A1 (p_st[1]), .A2 (n_52), .ZN (n_54));
  OAI21_X1 g199(.A (n_67), .B1 (n_132), .B2 (n_54), .ZN (n_64));
  INV_X4 fopt200(.A (x), .ZN (n_63));
  INV_X1 g9(.A (n_67), .ZN (n_68));
  NAND2_X1 g10(.A1 (p_st[1]), .A2 (n_52), .ZN (n_67));
  BUF_X1 drc(.A (n_63), .Z (n_132));
endmodule


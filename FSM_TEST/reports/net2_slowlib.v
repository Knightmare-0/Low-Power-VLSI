
// Generated by Cadence Genus(TM) Synthesis Solution 20.10-p001_1
// Generated on: Dec  8 2023 18:05:21 IST (Dec  8 2023 12:35:21 UTC)

// Verification Directory fv/fsm_1101 

module fsm_1101(x, clk, reset, y);
  input x, clk, reset;
  output y;
  wire x, clk, reset;
  wire y;
  wire [1:0] p_st;
  wire UNCONNECTED, n_0, n_1, n_2, n_4, n_5, n_6, n_7;
  SDFFR_X1 \p_st_reg[0] (.RN (n_7), .CK (clk), .D (n_4), .SE (n_2), .SI
       (n_5), .Q (p_st[0]), .QN (n_0));
  DFFR_X1 \p_st_reg[1] (.RN (n_7), .CK (clk), .D (n_6), .Q (p_st[1]),
       .QN (UNCONNECTED));
  NOR2_X1 g184(.A1 (n_1), .A2 (n_5), .ZN (n_6));
  HA_X1 g185(.A (p_st[1]), .B (n_0), .CO (n_4), .S (n_5));
  AND3_X1 g186(.A1 (n_2), .A2 (p_st[1]), .A3 (p_st[0]), .ZN (y));
  NOR2_X1 g187(.A1 (n_2), .A2 (p_st[1]), .ZN (n_1));
  INV_X1 g189(.A (reset), .ZN (n_7));
  CLKBUF_X1 g190(.A (x), .Z (n_2));
endmodule


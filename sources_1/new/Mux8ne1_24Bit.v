
module Mux8ne1_24Bit(
  input[23:0] Hyrja0,
  input[23:0] Hyrja1,
  input[23:0] Hyrja2,
  input[23:0] Hyrja3,
  input[23:0] Hyrja4,
  input[23:0] Hyrja5,
  input[23:0] Hyrja6,
  input[23:0] Hyrja7,
  input[2:0] s,
  output[23:0] Dalja
);
  wire[23:0] dalja1, dalja2;
Mux4ne1_24Bit m0(Hyrja0, Hyrja1, Hyrja2, Hyrja3, s[1:0], dalja1);
Mux4ne1_24Bit m1(Hyrja4, Hyrja5, Hyrja6, Hyrja7, s[1:0], dalja2);
Mux2ne1_24Bit m(dalja1, dalja2, s[2], Dalja);

endmodule
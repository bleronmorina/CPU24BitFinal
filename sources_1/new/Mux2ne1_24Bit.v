module Mux2ne1_24Bit(
input[23:0] Hyrja0,
    input[23:0] Hyrja1,
    input S,
    output[23:0] Dalja
    );
    
    wire [23:0] Sp;
    assign Sp = {24{S}};
    assign Dalja = (~Sp & Hyrja0) | (Hyrja1 & Sp);
endmodule
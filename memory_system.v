module memory_system(
    input [7:0] data,
    input enable,
    input [1:0] addr,
    output [7:0] memory
);

    wire [7:0] storage[11:0];
    wire [3:0] enableStore;

    demux demux_inst (
        .data(data),
        .sel(addr),
        .A(storage[0]),
        .B(storage[1]),
        .C(storage[2]),
        .D(storage[3])
    );

    bit_demux demux_enable_inst (
        .data(enable),
        .sel(addr),
        .A(enableStore[0]),
        .B(enableStore[1]),
        .C(enableStore[2]),
        .D(enableStore[3])
    );

    byte_memory byte_memory_inst1 (
        .data(storage[0]),
        .enable(enableStore[0]),
        .memory(storage[8])
    );

    byte_memory byte_memory_inst2 (
        .data(storage[1]),
        .enable(enableStore[1]),
        .memory(storage[9])
    );

    byte_memory byte_memory_inst3 (
        .data(storage[2]),
        .enable(enableStore[2]),
        .memory(storage[10])
    );

    byte_memory byte_memory_inst4 (
        .data(storage[3]),
        .enable(enableStore[3]),
        .memory(storage[11])
    );

    mux mux_inst_8bit (
        .A(storage[8]),
        .B(storage[9]),
        .C(storage[10]),
        .D(storage[11]),
        .sel(addr),
        .Y(memory)
    );
    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory

endmodule
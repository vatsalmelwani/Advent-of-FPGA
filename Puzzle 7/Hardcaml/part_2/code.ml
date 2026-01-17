#require "hardcaml";;
open Hardcaml;;
open Signal;;
#require "base";;
open Base;;
(* ===================================================== *)
(* count_ones : combinational                             *)
(* ===================================================== *)
let count_ones () =
  let data = Signal.input "data" 32 in
  let count = Signal.uresize (Signal.popcount data) ~width:6 in
  Circuit.create_exn ~name:"count_ones" [ Signal.output "count" count ]

(* ===================================================== *)
(* mod_counter : sequential, modulo 5                    *)
(* ===================================================== *)
let mod_counter () =
  let clk = Signal.input "clk" 1 in
  let reset = Signal.input "reset" 1 in
  let enable = Signal.input "enable" 1 in
  let spec = Reg_spec.create ~clock:clk ~reset () in
  let d = Signal.wire 3 in
  let next = Signal.mux2 Signal.(d ==:. 4) (Signal.zero 3) Signal.(d +:. 1) in
  let q = Signal.reg spec ~enable ~reset_to:(Bits.zero 3) next in
  Signal.(d <-- q);
  Circuit.create_exn ~name:"mod_counter" [ Signal.output "q" q ]

let mod_counter_1 () =
  let clk = Signal.input "clk" 1 in
  let reset = Signal.input "reset" 1 in
  let enable = Signal.input "enable" 1 in
  let spec = Reg_spec.create ~clock:clk ~reset () in
  let d = Signal.wire 3 in
  let next = Signal.mux2 Signal.(d ==:. 4) (Signal.zero 3) Signal.(d +:. 1) in
  let q = Signal.reg spec ~enable ~reset_to:(Bits.of_string "3'b001") next in
  Signal.(d <-- q);
  Circuit.create_exn ~name:"mod_counter_1" [ Signal.output "q" q ]

(* ===================================================== *)
(* init_done : sequential                                *)
(* ===================================================== *)
let init_done () =
  let clk = Signal.input "clk" 1 in
  let reset = Signal.input "reset" 1 in
  let enable = Signal.input "enable" 1 in
  let sel = Signal.input "sel" 3 in
  let spec = Reg_spec.create ~clock:clk ~reset () in
  let d = Signal.wire 1 in
  let next = Signal.mux2 Signal.(sel ==:. 4) Signal.vdd d in
  let q = Signal.reg spec ~enable ~reset_to:(Bits.zero 1) next in
  Signal.(d <-- q);
  Circuit.create_exn ~name:"init_done" [ Signal.output "done" q ]

(* ===================================================== *)
(* storage_chunked_neighbor : sequential 160-bit storage *)
(* ===================================================== *)
let storage_chunked_neighbor () =
  let clk = Signal.input "clk" 1 in
  let reset = Signal.input "reset" 1 in
  let enable = Signal.input "enable" 1 in
  let sel = Signal.input "sel" 3 in
  let curr_data = Signal.input "curr_data" 32 in
  let prev_msb_update = Signal.input "prev_msb_update" 1 in
  let spec = Reg_spec.create ~clock:clk ~reset () in

  let d = Signal.wire 161 in

  let chunk i =
    Signal.select d ~high:(159 - i * 32) ~low:(128 - i * 32)
  in

  let updated_chunk i =
    Signal.mux2 Signal.(sel ==:. i) curr_data (chunk i)
  in

  let data1 = Signal.concat_msb [ Signal.select d 160 160; updated_chunk 0; updated_chunk 1; updated_chunk 2; updated_chunk 3; updated_chunk 4]
  in
  let next i=
    let bit_pos = 160 - i*32 in
    let old_bit = Signal.select data1 bit_pos bit_pos in
    let l_data = Signal.select data1 160 (bit_pos + 1) in
    let r_data = Signal.select data1 (bit_pos -1) 0 in
    let data2 = Signal.concat_msb[l_data; Signal.(old_bit |: prev_msb_update); r_data] in
    Signal.mux2 Signal.(sel ==:. 0) data1 data2
  in

  let data_next = Signal.mux2 Signal.(sel ==:. 0) (data1) (Signal.mux2 Signal.(sel ==:. 1) (next 1) (Signal.mux2 Signal.(sel ==:. 2) (next 2) (Signal.mux2 Signal.(sel ==:. 3) (next 3) (next 4)))) in

  let q = Signal.reg spec ~enable ~reset_to:(Bits.zero 161) (data_next) in
  Signal.(d <-- q);
  let q1 = Signal.select q 159 0 in
  Circuit.create_exn ~name:"storage_chunked_neighbor" [ Signal.output "q" q1 ]

let store_count () =
  let clk = Signal.input "clk" 1 in
  let reset = Signal.input "reset" 1 in
  let enable = Signal.input "enable" 1 in
  let data = Signal.input "data" 6 in
  let spec = Reg_spec.create ~clock:clk ~reset () in
  let d = Signal.wire 64 in
  let next = Signal.(d +: Signal.uresize data ~width:64) in
  let q = Signal.reg spec ~enable ~reset_to:(Bits.zero 64) next in
  Signal.(d <-- q);
  Circuit.create_exn ~name:"store_count" [ Signal.output "out_sum" q ]

let calc_next_sum () = 
  let x_ls = Signal.input "x_ls" 64 in
  let x_rs = Signal.input "x_rs" 64 in
  let sum_old = Signal.input "sum_old" 64 in
  let sum_new = Signal.uresize (sum_old +: Signal.uresize x_ls ~width:64 +: Signal.uresize x_rs ~width:64) ~width:64 in
  Circuit.create_exn ~name:"calc_next_sum" [ Signal.output "sum_new" sum_new ]

(* ===================================================== *)
(* BRAM Memory instance                                  *)

let bram_instance () = 
  let clk = Signal.input "clk" 1 in
  let waddr = Signal.input "waddr" 3 in
  let din = Signal.input "din" 2048 in
  let we = Signal.input "we" 1 in
  let raddr = Signal.input "raddr" 3 in
  let dout = Signal.wire 2048 in
  let re = Signal.input "re" 1 in

  let write_port =
    { Write_port.write_clock = clk
    ; write_address = waddr
    ; write_enable = we
    ; write_data = din } in

  let read_port =
    { Read_port.read_clock = clk
    ; read_address = raddr
    ; read_enable = re } in
  
  let q =
    Ram.create
      ~collision_mode:Read_before_write
      ~size:5
      ~write_ports:[|write_port|]
      ~read_ports:[|read_port|]
      () in
  
  (* let read_data = Read_port.data read_port in *)
  Signal.(dout <-- q.(0));
  Circuit.create_exn ~name:"bram_instance" [ Signal.output "dout" dout ]

let computation_start () = 
  let sel_delayed = Signal.input "sel_delayed" 3 in
  let clk = Signal.input "clk" 1 in
  let reset = Signal.input "reset" 1 in
  let enable = Signal.input "enable" 1 in
  let spec = Reg_spec.create ~clock:clk ~reset () in
  let d = Signal.wire 1 in
  let count_data = Signal.wire 8 in
  let next = Signal.mux2 Signal.(sel_delayed ==:. 4) Signal.(count_data +:. 1) count_data in
  let count_reg = Signal.reg spec ~enable ~reset_to:(Bits.zero 8) next in
  Signal.(count_data<--count_reg);
  let next_flag = Signal.mux2 Signal.(count_reg ==:. 144) Signal.vdd d in
  let q = Signal.reg spec ~enable ~reset_to:(Bits.zero 1) next_flag in
  Signal.(d <-- q);
  Circuit.create_exn ~name:"computation_start" [ Signal.output "q" q ]

  let sum_2048_to_64 () =
    let data = Signal.input "data" 2048 in

    (* Break into 32 chunks of 64 bits *)
    let chunks =
      List.init 32 ~f:(fun i ->
        Signal.select data
          ~high:((i + 1) * 64 - 1)
          ~low:(i * 64)
      )
    in

    (* Accumulate all chunks into a 64-bit sum *)
    let sum =
      List.fold chunks
        ~init:(Signal.zero 64)
        ~f:(fun acc c ->
          Signal.uresize (acc +: c) ~width:64
        )
    in

    Circuit.create_exn
      ~name:"sum_2048_to_64"
      [ Signal.output "sum" sum ]

  let accumulate_5_cycles () =
    (* Inputs *)
    let clk = Signal.input "clk" 1 in
    let reset = Signal.input "reset" 1 in
    let enable = Signal.input "enable" 1 in
    let data = Signal.input "data" 2048 in

    let spec = Reg_spec.create ~clock:clk ~reset () in

    (* -------------------------------------------------- *)
    (* Instantiate sum_2048_to_64                         *)
    (* -------------------------------------------------- *)
    let sum_inst =
      Instantiation.create
        ~name:"sum_2048_to_64"
        ~inputs:[ "data", data ]
        ~outputs:[ "sum", 64 ]
        ()
    in
    let sum = Instantiation.output sum_inst "sum" in

    (* -------------------------------------------------- *)
    (* Cycle counter (0..5)                               *)
    (* -------------------------------------------------- *)
    let count = Signal.wire 3 in

    let count_next =
      Signal.mux2
        Signal.(count ==:. 5)
        count
        Signal.(count +:. 1)
    in

    let count_reg =
      Signal.reg spec ~enable ~reset_to:(Bits.zero 3) count_next
    in
    Signal.(count <-- count_reg);

    (* -------------------------------------------------- *)
    (* Accumulator (64-bit)                               *)
    (* -------------------------------------------------- *)
    let acc = Signal.wire 64 in

    let acc_next =
      Signal.mux2
        Signal.(count ==:. 5)
        acc
        (Signal.uresize (acc +: sum) ~width:64)
    in

    let acc_reg =
      Signal.reg spec ~enable ~reset_to:(Bits.zero 64) acc_next
    in
    Signal.(acc <-- acc_reg);

    (* -------------------------------------------------- *)
    (* Outputs                                           *)
    (* -------------------------------------------------- *)
    Circuit.create_exn
      ~name:"accumulate_5_cycles"
      [ Signal.output "sum_out" acc ]



(* ===================================================== *)
(* top : structural                                      *)
(* ===================================================== *)
let top () =
  let clk = Signal.input "clk" 1 in
  let reset = Signal.input "reset" 1 in
  let data = Signal.input "data" 32 in
  let enable = Signal.input "enable" 1 in
  let q = Signal.wire 160 in
  let bram_dout = Signal.wire 2048 in
  let bram_wdata = Signal.wire 2048 in
  let count_sums_delayed = Signal.wire 2048 in

  let sel_inst = Instantiation.create ~name:"mod_counter" ~inputs:[ "clk", clk; "reset", reset; "enable", enable ] ~outputs:[ "q", 3 ] () in
  let sel = Instantiation.output sel_inst "q" in
  let sel_delayed = Signal.reg (Reg_spec.create ~clock:clk ~reset ()) ~enable ~reset_to:(Bits.zero 3) sel in
  let data_delayed = Signal.reg (Reg_spec.create ~clock:clk ~reset ()) ~enable ~reset_to:(Bits.zero 32) data in
  let init_done_signal =
    Instantiation.output
      (Instantiation.create ~name:"init_done" ~inputs:[ "clk", clk; "reset", reset; "enable", enable; "sel", sel ] ~outputs:[ "done", 1 ] ())
      "done"
  in
  let init_done_signal_delayed = Signal.reg (Reg_spec.create ~clock:clk ~reset ()) ~enable ~reset_to:(Bits.zero 1) init_done_signal in
  let sel_1_inst = Instantiation.create ~name:"mod_counter_1" ~inputs:[ "clk", clk; "reset", reset; "enable", enable ] ~outputs:[ "q", 3 ] () in
  let sel_1 = Instantiation.output sel_1_inst "q" in

  let comp_done_signal = Instantiation.output
    (Instantiation.create
      ~name:"computation_start"
      ~inputs:[ "sel_delayed", sel_delayed; "clk", clk; "reset", reset; "enable", enable ]
      ~outputs:[ "q", 1 ]
      ())
    "q" in

  (* let read_inst =
    Instantiation.create
      ~name:"storage_chunked_neighbor"
      ~inputs:[ "clk", clk; "reset", reset; "enable", enable; "sel", sel; "curr_data", Signal.zero 32; "prev_msb_update", Signal.gnd ]
      ~outputs:[ "q", 160 ]
      ()
  in *)

  (* let q_tmp = Instantiation.output read_inst "q" in *)
  let chunks = List.init 5 ~f:(fun i -> Signal.select q ~high:(159 - i * 32) ~low:(128 - i * 32)) in
  let old = List.foldi chunks ~init:(Signal.zero 32) ~f:(fun i acc c -> Signal.mux2 Signal.(sel ==:. i) c acc) in

  let x = Signal.(data &: old) in
  let x_shift = Signal.((Signal.sll x 1) |: (Signal.srl x 1)) in
  let y = Signal.((~: old) |: x) in
  let data_final = Signal.(x_shift |: ((~: y) &: old)) in

  let x_reg = Signal.reg (Reg_spec.create ~clock:clk ~reset ()) ~enable ~reset_to:(Bits.zero 32) x in

  let u = Signal.select x 31 31 in

  let v = Signal.select x 0 0 in
  let vreg = Signal.reg (Reg_spec.create ~clock:clk ~reset ()) ~enable ~reset_to:(Bits.zero 1) v in
  let vreg_delayed = Signal.reg (Reg_spec.create ~clock:clk ~reset ()) ~enable ~reset_to:(Bits.zero 1) vreg in

  let curr_data1 = Signal.mux2 Signal.(sel ==:. 0) data_final (Signal.concat_msb [ Signal.(Signal.select data_final 31 31 |: vreg); Signal.select data_final 30 0 ]) in
  let curr_data = Signal.mux2 Signal.(init_done_signal ==:. 0) data curr_data1 in
  let write_inst =
    Instantiation.create
      ~name:"storage_chunked_neighbor"
      ~inputs:[ "clk", clk; "reset", reset; "enable", enable; "sel", sel; "curr_data", curr_data; "prev_msb_update", u ]
      ~outputs:[ "q", 160 ]
      ()
  in

  let q1 = Instantiation.output write_inst "q" in
  Signal.(q <-- q1);
  let pop_inst = Instantiation.create ~name:"count_ones" ~inputs:[ "data", x ] ~outputs:[ "count", 6 ] () in
  let count_splits = Instantiation.output pop_inst "count" in

  let bram1 = Instantiation.create
    ~name:"bram_instance"
    ~inputs:[ "clk", clk; "waddr", sel_delayed; "din", bram_wdata; "we", Signal.(enable &: (~: comp_done_signal)); "raddr", sel; "re", Signal.vdd ]
    ~outputs:[ "dout", 2048 ]
    () in
  let bram_out = Instantiation.output bram1 "dout" in
  Signal.(bram_dout <-- bram_out);
  let bram_dout_reg = Signal.reg (Reg_spec.create ~clock:clk ~reset ()) ~enable ~reset_to:(Bits.zero 2048) bram_dout in

  let bram2 = Instantiation.create
    ~name:"bram_instance"
    ~inputs:[ "clk", clk; "waddr", sel_delayed; "din", bram_wdata; "we", Signal.(enable &: (~: comp_done_signal)); "raddr", sel_1; "re", Signal.vdd ]
    ~outputs:[ "dout", 2048 ]
    () in
  let bram_out1 = Instantiation.output bram2 "dout" in
  Signal.(count_sums_delayed <-- bram_out1);

  (* Instantiate the calc_next_sum 30 times *)
    let sum_outputs =
    List.init 30 ~f:(fun i ->
      let x_ls = Signal.mux2 (~: init_done_signal_delayed) (Signal.uresize (Signal.select data_delayed (i+1) (i+1)) ~width:64) (Signal.mux2 (Signal.select x_reg (i+1)(i+1)) (Signal.zero 64) ((Signal.mux2 (Signal.select x_reg (i+2) (i+2)) (Signal.select bram_dout ~high:((i+3)*64 - 1) ~low:((i+2)*64)) (Signal.zero 64)))) in
      let x_rs = Signal.mux2 (Signal.select x_reg (i+1)(i+1)) (Signal.zero 64) (Signal.mux2 (Signal.select x_reg (i) (i)) (Signal.select bram_dout ~high:((i+1)*64 - 1) ~low:((i)*64)) (Signal.zero 64)) in

      (* slice 64-bit chunk from concatenated sum_old *)
      let sum_old_i = Signal.mux2 (Signal.select x_reg (i+1)(i+1)) (Signal.zero 64) (Signal.mux2 (~: init_done_signal_delayed) (Signal.zero 64) (
        Signal.select
          bram_out
          ~high:((i+2)*64 - 1)
          ~low:((i+1)*64)))
      in

      let inst =
        Instantiation.create
          ~name:"calc_next_sum"
          ~inputs:
            [ "x_ls", x_ls
            ; "x_rs", x_rs
            ; "sum_old", sum_old_i
            ]
          ~outputs:[ "sum_new", 64 ]
          ()
      in
      Instantiation.output inst "sum_new"
    )
  in

  let sum_31_inst = Instantiation.create ~name:"calc_next_sum"
    ~inputs:
      [ "x_ls", Signal.mux2 (~: init_done_signal_delayed) ( Signal.uresize (Signal.select data_delayed (31) (31)) ~width:64) (Signal.mux2 (Signal.select x_reg (31)(31)) (Signal.zero 64) (Signal.mux2 (Signal.select x_reg 30 30) (Signal.select bram_dout ~high:((31)*64 - 1) ~low:((30)*64)) (Signal.zero 64)))
      ; "x_rs", Signal.mux2 (Signal.select x_reg (31)(31)) (Signal.zero 64) (Signal.mux2 Signal.(sel_delayed ==:. 0) (Signal.zero 64) (Signal.mux2 (vreg_delayed) (Signal.select bram_dout_reg ~high:(63) ~low:(0)) (Signal.zero 64)))
      ; "sum_old", Signal.mux2 (Signal.select x_reg (31)(31)) (Signal.zero 64) (Signal.mux2 (~: init_done_signal_delayed) (Signal.zero 64) (
          Signal.select
            bram_out
            ~high:(32*64 - 1)
            ~low:(31*64)))
      ]
    ~outputs:[ "sum_new", 64 ]
    () in

  let sum_0_inst = Instantiation.create ~name:"calc_next_sum"
    ~inputs:
      [ "x_ls", Signal.mux2 (~: init_done_signal_delayed) (Signal.uresize (Signal.select data_delayed (0) (0)) ~width:64) (Signal.mux2 (Signal.select x_reg (0)(0)) (Signal.zero 64) (Signal.mux2 Signal.(sel_delayed ==:. 4) (Signal.zero 64) (Signal.mux2 (Signal.select x 31 31) (Signal.select count_sums_delayed ~high:((32)*64 - 1) ~low:((31)*64)) (Signal.zero 64) )))
      ; "x_rs", Signal.mux2 (Signal.select x_reg (0)(0)) (Signal.zero 64) (Signal.mux2 (Signal.select x_reg 1 1) (Signal.select bram_dout ~high:((2)*64 - 1) ~low:((1)*64)) (Signal.zero 64))
      ; "sum_old", Signal.mux2 (Signal.select x_reg (0)(0)) (Signal.zero 64) (Signal.mux2 (~: init_done_signal_delayed) (Signal.zero 64) (
          Signal.select
            bram_out
            ~high:(64 - 1)
            ~low:0))
      ]
    ~outputs:[ "sum_new", 64 ]
    () in

  let all_sums = Signal.concat_lsb [Instantiation.output sum_0_inst "sum_new" ; Signal.concat_lsb sum_outputs; Instantiation.output sum_31_inst "sum_new"] in

  Signal.(bram_wdata <-- all_sums);



  (* let store_count_inst = 
    Instantiation.create
      ~name:"store_count"
      ~inputs:[ "clk", clk; "reset", reset; "enable", enable; "data", count_splits ]
      ~outputs:[ "out_sum", 64 ]
      ()
  in *)

  let final_sum_inst = Instantiation.create
    ~name:"accumulate_5_cycles"
    ~inputs:[ "clk", clk; "reset", reset; "enable", comp_done_signal; "data", bram_dout ]
    ~outputs:[ "sum_out", 64 ]
    () in
  
  let final_sum = Instantiation.output final_sum_inst "sum_out" in
  (* Circuit.create_exn ~name:"top" [ Signal.output "out_sum" (Instantiation.output store_count_inst "out_sum") ] *)
  Circuit.create_exn ~name:"top" [ Signal.output "final_sum" final_sum ]

let database = Circuit_database.create ();;
Circuit_database.insert database (mod_counter ());;
Circuit_database.insert database (mod_counter_1());;
Circuit_database.insert database (storage_chunked_neighbor ());;
Circuit_database.insert database (count_ones ());;
Circuit_database.insert database (init_done ());;
Circuit_database.insert database (store_count ());;
Circuit_database.insert database (calc_next_sum ());;
  Circuit_database.insert database (bram_instance ());;
Circuit_database.insert database (computation_start ());;
Circuit_database.insert database (sum_2048_to_64 ());;
Circuit_database.insert database (accumulate_5_cycles ());;

 let rtl = Rtl.create ~database Verilog [ top() ];;
  Rtl.full_hierarchy rtl |> Rope.to_string |> Stdio.print_endline;;
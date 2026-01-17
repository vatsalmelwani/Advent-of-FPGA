open Hardcaml

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
  let d = Signal.wire 16 in
  let next = Signal.(d +: Signal.uresize data ~width:16) in
  let q = Signal.reg spec ~enable ~reset_to:(Bits.zero 16) next in
  Signal.(d <-- q);
  Circuit.create_exn ~name:"store_count" [ Signal.output "out_sum" q ]

(* ===================================================== *)
(* top : structural                                      *)
(* ===================================================== *)
let top () =
  let clk = Signal.input "clk" 1 in
  let reset = Signal.input "reset" 1 in
  let data = Signal.input "data" 32 in
  let enable = Signal.input "enable" 1 in
  let q = Signal.wire 160 in

  let sel_inst = Instantiation.create ~name:"mod_counter" ~inputs:[ "clk", clk; "reset", reset; "enable", enable ] ~outputs:[ "q", 3 ] () in
  let sel = Instantiation.output sel_inst "q" in

  let init_done_signal =
    Instantiation.output
      (Instantiation.create ~name:"init_done" ~inputs:[ "clk", clk; "reset", reset; "enable", enable; "sel", sel ] ~outputs:[ "done", 1 ] ())
      "done"
  in


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

  let u = Signal.select x 31 31 in
  let v = Signal.select x 0 0 in
  let vreg = Signal.reg (Reg_spec.create ~clock:clk ~reset ()) ~enable ~reset_to:(Bits.zero 1) v in
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

  let store_count_inst = 
    Instantiation.create
      ~name:"store_count"
      ~inputs:[ "clk", clk; "reset", reset; "enable", enable; "data", count_splits ]
      ~outputs:[ "out_sum", 16 ]
      ()
  in
  Circuit.create_exn ~name:"top" [ Signal.output "out_sum" (Instantiation.output store_count_inst "out_sum") ]

let database = Circuit_database.create ()
Circuit_database.insert database (mod_counter ())
Circuit_database.insert database (storage_chunked_neighbor ())
 Circuit_database.insert database (count_ones ())
 Circuit_database.insert database (init_done ())
  Circuit_database.insert database (store_count ())

 let rtl = Rtl.create ~database Verilog [ top() ]
  Rtl.full_hierarchy rtl |> Rope.to_string |> Stdio.print_endline;;
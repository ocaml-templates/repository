(** Main entry point for our Hello World application. This is a special comment
    (docstring) that describes the module. *)

(* The following line is the main entry point of our program. In OCaml, we use
   "let () = ..." to define the main function. *)
let () =
  (* We use a try-with block for basic error handling *)
  try
    (* Sys.argv is an array of command-line arguments. Sys.argv.(0) is the
       program name, so we check if there's more than one argument. *)
    let name =
      if Array.length Sys.argv > 1 then
        (* If there's at least one argument, use it as the name *)
        Sys.argv.(1)
      else (* Otherwise, use "World" as the default name *)
        "World"
    in
    (* Call the greet function from our Hello module *)
    let greeting = Hello.greet name in
    (* Print the greeting to the console *)
    print_endline greeting
  with (* If any exception occurs, we catch it here *)
  | exn ->
    (* We print the error message to the error output (stderr) *)
    Printf.eprintf "An error occurred: %s\n" (Printexc.to_string exn);
    (* Exit the program with an error code *)
    exit 1

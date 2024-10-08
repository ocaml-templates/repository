(** Implementation of the Hello module. This module provides greeting
    functionality. *)

(* The greet function takes a name as input and returns a greeting string *)
let greet name =
  (* Check if the input string is empty *)
  if String.length name = 0 then
    (* If it's empty, raise an Invalid_argument exception *)
    invalid_arg "Name cannot be empty"
  else
    (* Otherwise, create and return the greeting string *)
    "Hello, " ^ name ^ "!"
(* The ^ operator is used for string concatenation in OCaml *)

(* The greet_many function takes a list of names and returns a greeting for all
   of them *)
let greet_many names =
  (* We use pattern matching to handle different cases *)
  match names with
  | [] ->
      (* If the list is empty, greet everyone *)
      "Hello, everyone!"
  | [ name ] ->
      (* If there's only one name, use the singular greet function *)
      greet name
  | names ->
      (* If there are multiple names, join them with commas *)
      let names_str = String.concat ", " names in
      (* Then create the greeting with all names *)
      "Hello, " ^ names_str ^ "!"

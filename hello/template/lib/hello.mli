(** The Hello module provides greeting functionality. This is the interface file
    (.mli) which describes what the module exposes. *)

(* This line declares that our module has a function called greet *)
val greet : string -> string
(** [greet name] returns a greeting message for the given [name].

    This comment is a docstring for the greet function. It's good practice
    to document your functions, especially in interface files.

    @param name The name to greet. Must not be empty.
    @return A greeting message.
    @raise Invalid_argument if [name] is empty.

    {4 Examples}

    {[
      greet "World" = "Hello, World!"
      greet "Jane" = "Hello, Jane!"
      greet "" (* raises Invalid_argument *)
    ]}
*)

(* This line declares another function called greet_many *)
val greet_many : string list -> string
(** [greet_many names] returns a greeting message for multiple names.

    @param names A list of names to greet.
    @return A greeting message for all provided names.

    {4 Examples}

    {[
      greet_many [] = "Hello, everyone!"
      greet_many ["Alice"] = "Hello, Alice!"
      greet_many ["Bob"; "Charlie"] = "Hello, Bob, Charlie!"
    ]}
*)

(* Note: In OCaml, we use .mli files to define the public interface of our
   modules. Only the functions and types declared in this file will be
   accessible to users of the module. *)

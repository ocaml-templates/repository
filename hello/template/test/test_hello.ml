(* Open the Hello module so we can use its functions directly *)
open Hello

(* Test function for the greet function *)
let test_greet () =
  (* Test basic functionality *)
  assert (greet "World" = "Hello, World!");
  assert (greet "Jane" = "Hello, Jane!");

  (* Test error case: empty string should raise Invalid_argument *)
  try
    let _ = greet "" in
    (* If we reach this point, the test has failed *)
    failwith "Expected Invalid_argument exception for empty name"
  with Invalid_argument _ ->
    (* This is the expected behavior, so we do nothing *)
    ()

(* Test function for the greet_many function *)
let test_greet_many () =
  (* Test with an empty list *)
  assert (greet_many [] = "Hello, everyone!");
  (* Test with a single name *)
  assert (greet_many [ "Alice" ] = "Hello, Alice!");
  (* Test with multiple names *)
  assert (greet_many [ "Bob"; "Charlie" ] = "Hello, Bob, Charlie!")

(* Function to run all our tests *)
let run_tests () =
  (* Call each test function *)
  test_greet ();
  test_greet_many ();
  (* If we've reached this point, all tests have passed *)
  print_endline "All tests passed!"

(* Main entry point for our test suite *)
let () = run_tests ()

(* Note: In OCaml, we often use assertions for simple tests. For more complex
   projects, you might want to use a testing framework like OUnit or
   Alcotest. *)

open Core.Std

(** draws OpenGL things*)
let display () = ignore 0;;

(** Handles keyboard input *)
let keyboard ~key ~x ~y = ignore 0;;

(** initalizes OpenGL *)
let init
    ~display_func
    ~keyboard_func
  =
  let module G = Glut in
  ignore @@ G.init [||];
  G.initDisplayMode
    ~depth:true
    ~double_buffer:true ();
  G.initWindowPosition ~x:100 ~y:100;
  G.initWindowSize ~w:600 ~h:600;
  ignore @@ G.createWindow "First Game";
  G.displayFunc ~cb:display_func;
  G.keyboardFunc ~cb:keyboard_func;
  G.mainLoop ();
;;

(** This is the main loop*)
let () =
  init
    ~display_func:display
    ~keyboard_func:keyboard
;;

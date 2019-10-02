module RW_module = Irmin_mem.Atomic_write (Irmin.Contents.String) (Irmin.Contents.String);;

let config = Irmin_mem.config () ;;

let aw_t = Lwt_main.run @@ RW_module.v config ;;

let _ = RW_module.set aw_t "qwe" "rty1" ;;
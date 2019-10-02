### Note:
* **Irmin-master_exp** directory is the normal Irmin repo.
* This repo only contains the files which I have modified for my work
* I have used **irmin-mem** as the skeleton to build **irmin-cassandra** which is not named so yet. 
* **libcassandra** directory should contain the c++ driver from datastax which I have not checked in due to its large size. It can be downloaded from its [github repo](https://github.com/datastax/cpp-driver). The driver is compiled using cmake which generates the required .so file.
* **libcassandra.opam** is created to add the it as a library to the opam.
* **output** folder contains the *.sexp file for reference.
* **eg_code** directory contains a code and a dune which I am trying to run to verify if my code can access and run the C* driver or not.

I have tried it in 3 ways:
+ ocamlfind ocamlc -linkpkg -package digestif.ocaml -package irmin -package irmin-mem -package lwt.unix code.ml

This works just fine

+ ocamlfind ocamlopt -linkpkg -package digestif.ocaml -package irmin -package irmin-mem -package lwt.unix code.ml

+ dune exec src/code.exe --root=.

The last two above give _undefined reference_ errors for the functions in the **libuv**

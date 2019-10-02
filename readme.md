### Note:
* **Irmin-master_exp** directory is the normal Irmin repo.
* This repo only contains the files which I have modified for my work
* I have used **irmin-mem** as the skeleton to build **irmin-cassandra** which is not named so yet. 
* **libcassandra** directory should contain the c++ driver from datastax which I have not checked in due to its large size. It can be downloaded from its [github repo](https://github.com/datastax/cpp-driver). The driver is compiled using cmake which generates the required .so file.
* **libcassandra.opam** is created to add the it as a library to the opam.
* **output** folder contains the *.sexp file for reference.


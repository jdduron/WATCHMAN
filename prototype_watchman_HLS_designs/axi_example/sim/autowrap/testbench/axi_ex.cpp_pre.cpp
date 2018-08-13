# 1 "/home/idlab-52/Desktop/GitVivado/WATCHMAN/prototype_watchman_HLS_designs/axi_ex.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/idlab-52/Desktop/GitVivado/WATCHMAN/prototype_watchman_HLS_designs/axi_ex.cpp"
# 92 "/home/idlab-52/Desktop/GitVivado/WATCHMAN/prototype_watchman_HLS_designs/axi_ex.cpp"
void example(int A[50], int B[50]) {
#pragma HLS INTERFACE axis port=A
#pragma HLS INTERFACE axis port=B

  int i;

  for(i = 0; i < 50; i++){
    B[i] = A[i] + 5;
  }
}

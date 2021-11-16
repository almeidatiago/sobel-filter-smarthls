
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string>
#include <cstring>

#include "hls/types.h"
#include "hls/streaming.hpp"
#include "hls/ap_int.hpp"
#include "hls/ap_fixpt.hpp"
#include "hls/axi_interface.hpp"


#define LEGUP_FLT2INT(a) (*(unsigned*)&(a))
#define LEGUP_DBL2INT(a) (*(unsigned long long*)&(a))
#define LEGUP_INT2FLT(a) (*(float*)&(a))
#define LEGUP_INT2DBL(a) (*(double*)&(a))

// Generated by this C program: *.sw.dat
// Generated from hardware simulation: *.hw.dat



// store the number of calls when the program ends in tb_config.tcl
// Note: deconstructor will only work in GCC
int num_calls = 0;
void __attribute__ ((destructor)) dtor() {
    if (num_calls > 0) {
        FILE *tb_config_tcl = fopen("simulation/sw/tb_config.tcl", "w");
        assert(tb_config_tcl);
        fprintf(tb_config_tcl, "set_parameter COSIM_TB_NUM_CALLS %d\n", num_calls);
    }
}

void open_legup_cosim_file(FILE *&fp, const char *filename, const char *mode) {
    if (!fp) {
        fp = fopen(filename, mode);
        if (!fp) {
            printf("Error: Unable to open '%s'\n", filename);
            exit(1);
        }
    }
}

void writeRAM(FILE *fp, unsigned char *ram, int width, int depth) {
  for (int k1 = 0; k1 < depth; ++k1) {
    for (int k2 = width - 1; k2 >= 0; --k2) {
      fprintf(fp, "%02hhx", ram[k1 * width + k2]);
    }
    fprintf(fp, "\n");
  }
  printf("\n");
}

void readRAM(FILE *fp, unsigned char *ram, int width, int depth) {
  char comment_val[100];
  // disregard first 3 lines from file which are comments
  assert(fscanf(fp, "%[^\n]\n", comment_val));
  assert(fscanf(fp, "%[^\n]\n", comment_val));
  assert(fscanf(fp, "%[^\n]\n", comment_val));

  for (int k1 = 0; k1 < depth; ++k1) {
    for (int k2 = width - 1; k2 >= 0; --k2) {
      assert(fscanf(fp, "%02hhx", &ram[k1 * width + k2]));
    }
  }
}

void readAPStr(unsigned char *ram, char *str, int n) {
    unsigned char t[n] = {0};

    // Make # of char even to parse each 2 char as 1 digit
    unsigned len = strlen(str);
    char e_str[len+1];
    if (len % 2 == 1) {
        e_str[0] = '0';
        strcpy(e_str+1, str);
    } else {
        strcpy(e_str, str);
    }

    int i = 0;
    for (i = 0; i < n; ++i) {
        if (sscanf(e_str + 2*i, "%02hhx", t + i) != 1) break;
    }

    int k = 0;
    while (--i >= 0) {
        ram[k++] = t[i];
    }
}

void writeAPStr(unsigned char *ram, char *str, int n) {
    char *pos = str;
    // Need to reverse and it was reversed before
    for (int i = n-1; i >= 0; i--) {
        pos += sprintf(pos, "%02hhx", ram[i]);
    }
}







// original top-level prototype
void sobel_filter(unsigned char in[][512], unsigned char out[][512]);

// instrumentation wrapper around original top-level
void sobel_filter_LEGUP_WRAP(unsigned char in[][512], unsigned char out[][512]) {
    static FILE *verify_hw = NULL;
    if (!verify_hw)
        verify_hw = fopen(".verify_hw", "r");

    std::string in_IN_SW_DAT = "simulation/sw/sobel_filter_in.in.sw.dat" + std::to_string(num_calls);
std::string out_IN_SW_DAT = "simulation/sw/sobel_filter_out.in.sw.dat" + std::to_string(num_calls);
std::string out_OUT_HW_DAT = "simulation/sw/sobel_filter_out.out.hw.dat" + std::to_string(num_calls);

    FILE *in_in_sw_file = NULL;
FILE *out_in_sw_file = NULL;
FILE *out_out_hw_file = NULL;


    if (verify_hw) {
        
        // running after hardware simulation.
        // Don't call the original software function, instead use the hardware
        // simulation results as the output
        
        

        // discard inputs
        

        // read output vectors from hardware simulation
        

    open_legup_cosim_file(out_out_hw_file, out_OUT_HW_DAT.c_str(), "r");
    char out_comment_val[100];
    // disregard first 3 lines from file which are comments
    assert(fscanf(out_out_hw_file, "%[^\n]\n", out_comment_val));
    assert(fscanf(out_out_hw_file, "%[^\n]\n", out_comment_val));
    assert(fscanf(out_out_hw_file, "%[^\n]\n", out_comment_val));
                
    for (int i0 = 0; i0 <= 511; i0 += 1)
        for (int i1 = 0; i1 <= 511; i1 += 1)
{
char out_val;

// read until EOF
if (fscanf(out_out_hw_file, "%hhx\n", &out_val)
 != EOF) {
    
    out[i0][i1] = (out_val);
}
}
fclose(out_out_hw_file);


        
        printf("Retrieving hardware outputs from RTL simulation for sobel_filter function call %d.\n", ++num_calls); 

    } else {
        
        printf("Gathering inputs/outputs from software execution for sobel_filter function call %d.\n", num_calls+1);

        

        

        // dump the input to the .dat file
        

    open_legup_cosim_file(in_in_sw_file, in_IN_SW_DAT.c_str(), "w");
    for (int i0 = 0; i0 <= 511; i0 += 1)
        for (int i1 = 0; i1 <= 511; i1 += 1){
unsigned char v = in[i0][i1];

                fprintf(in_in_sw_file, "%hhx\n", (v));
                }
fclose(in_in_sw_file);



    open_legup_cosim_file(out_in_sw_file, out_IN_SW_DAT.c_str(), "w");
    for (int i0 = 0; i0 <= 511; i0 += 1)
        for (int i1 = 0; i1 <= 511; i1 += 1){
unsigned char v = out[i0][i1];

                fprintf(out_in_sw_file, "%hhx\n", (v));
                }
fclose(out_in_sw_file);



        
        // call original top level function
        sobel_filter(in, out);
        

        

        // dump the fifo input to the .dat file
        

        // dump the expected output to the .dat file
        

        num_calls++;

        return ;
    }
}

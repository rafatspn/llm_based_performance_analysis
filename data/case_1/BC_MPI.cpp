// ----------------------
// Initialization
// ----------------------
#include <iostream>
#include <string>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <cmath>
#include "structure.h"
#include <chrono>
#include <cstring>
#include <mpi.h>
#define TYPE double

// ----------------------
// Vector Structure 
// ----------------------
namespace bg 
{
    template<typename T>
    class Vector : public DataStruct<T> 
    {
        size_t _width = 0;
    public:
        int num_elements;
        int *data;
        Vector() = default;	
        Vector(size_t width) : _width(width)
        {            
            num_elements = width;
            data = new int[num_elements];            
        }
        ~Vector()
        {
            delete[] data;
        }
        int& operator()(int i) 
        {
            return data[i];
        }        
		size_t width() const 
        {
			return _width;
		}
    };
}

// ----------------------
// Function 
// ----------------------
namespace bg 
{
   namespace function 
   {     
       // Function 0
       template<typename T>
       void F_0(size_t n, size_t p, 
                       Vector<T> &V1, Vector<T> &V2, Vector<T> &V3, Vector<T> &V_MPI,
                       size_t V_size, size_t V_MPI_size, int rank, int num_proc)
       {
            // Initialization
            int op0; int op1; int op2; int op3; int op4; int op5;             
            // Communication
            // Communication
            for (int L0 = 0; L0 < 1; L0++)
            {
                MPI_Bcast(V1.data, V_size, MPI_INT, 0, MPI_COMM_WORLD);
            }    
            // Computation            
            for (int L0 = 0; L0 < static_cast<int>(pow(n, 1.0 / 2.0)); L0++)
            {                    
                for (int L1 = 0; L1 < static_cast<int>(n); L1++)
                {
                    // Operation
                    op1 = L1;                     
                    if(op1 > V_size){op1 = V_size - 1;}
                    V1(op1) = V2(op1) * V2(op1);  
                }
            }  
       } 
       // Function 1
       template<typename T>
       void F_1(size_t n, size_t p, 
                       Vector<T> &V1, Vector<T> &V2, Vector<T> &V3, Vector<T> &V_MPI,
                       size_t V_size, size_t V_MPI_size, int rank, int num_proc)
       {
            // Initialization
            int op0; int op1; int op2; int op3; int op4; int op5; 
            // Communication
            for (int L0 = 0; L0 < 1; L0++)
            {
                MPI_Scatter(V_MPI.data, V_size, MPI_INT, V1.data, V_size, MPI_INT, 0, MPI_COMM_WORLD);
            }    
            // Computation            
            for (int L0 = 0; L0 < static_cast<int>(pow(n, 1.0 / 2.0)); L0++)
            {                    
                for (int L1 = 0; L1 < static_cast<int>(n); L1++)
                {
                    // Operation
                    op1 = L1;                     
                    if(op1 > V_size){op1 = V_size - 1;}
                    V1(op1) = V2(op1) * V2(op1);  
                }
            }
       }
       // Function 2
       template<typename T>
       void F_2(size_t n, size_t p, 
                       Vector<T> &V1, Vector<T> &V2, Vector<T> &V3, Vector<T> &V_MPI,
                       size_t V_size, size_t V_MPI_size, int rank, int num_proc)
       {
            // Initialization
            int op0; int op1; int op2; int op3; int op4; int op5;   
            // Communication
            for (int L0 = 0; L0 < 1; L0++)
            {
                MPI_Allgather(V3.data, V_size, MPI_INT, V_MPI.data, V_size, MPI_INT, MPI_COMM_WORLD);
            }    
            // Computation            
            for (int L0 = 0; L0 < static_cast<int>(pow(n, 1.0 / 2.0)); L0++)
            {                    
                for (int L1 = 0; L1 < static_cast<int>(n); L1++)
                {
                    // Operation
                    op1 = L1;                     
                    if(op1 > V_size){op1 = V_size - 1;}
                    V1(op1) = V2(op1) * V2(op1);  
                }
            }   
       }
       // Function 3
       template<typename T>
       void F_3(size_t n, size_t p, 
                       Vector<T> &V1, Vector<T> &V2, Vector<T> &V3, Vector<T> &V_MPI,
                       size_t V_size, size_t V_MPI_size, int rank, int num_proc)
       {
            // Initialization
            int op0; int op1; int op2; int op3; int op4; int op5;  
            // Communication
            for (int L0 = 0; L0 < 1; L0++)
            {
                MPI_Reduce(V1.data, V2.data, V_size, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
            }    
            // Computation            
            for (int L0 = 0; L0 < static_cast<int>(pow(n, 1.0 / 2.0)); L0++)
            {                    
                for (int L1 = 0; L1 < static_cast<int>(n); L1++)
                {
                    // Operation
                    op1 = L1;                     
                    if(op1 > V_size){op1 = V_size - 1;}
                    V1(op1) = V2(op1) * V2(op1);  
                }
            }
       } 
       // Function 4
       template<typename T>
       void F_4(size_t n, size_t p, 
                       Vector<T> &V1, Vector<T> &V2, Vector<T> &V3, Vector<T> &V_MPI,
                       size_t V_size, size_t V_MPI_size, int rank, int num_proc)
       {
            // Initialization
            int op0; int op1; int op2; int op3; int op4; int op5;     
            // Communication
            for (int L0 = 0; L0 < 1; L0++)
            {
                MPI_Allreduce(V2.data, V3.data, V_size, MPI_INT, MPI_SUM, MPI_COMM_WORLD);
            }    
            // Computation            
            for (int L0 = 0; L0 < static_cast<int>(pow(n, 1.0 / 2.0)); L0++)
            {                    
                for (int L1 = 0; L1 < static_cast<int>(n); L1++)
                {
                    // Operation
                    op1 = L1;                     
                    if(op1 > V_size){op1 = V_size - 1;}
                    V1(op1) = V2(op1) * V2(op1);  
                }
            } 
       }  
       // Function 5
       template<typename T>
       void F_5(size_t n, size_t p, 
                       Vector<T> &V1, Vector<T> &V2, Vector<T> &V3, Vector<T> &V_MPI,
                       size_t V_size, size_t V_MPI_size, int rank, int num_proc)
       {
            // Initialization
            int op0; int op1; int op2; int op3; int op4; int op5;  
            // Communication
            for (int L0 = 0; L0 < 1; L0++)
            {
                MPI_Bcast(V1.data, V_size, MPI_INT, 0, MPI_COMM_WORLD);
            }    
            // Computation            
            for (int L0 = 0; L0 < static_cast<int>(pow(n, 1.0 / 2.0)); L0++)
            {                    
                for (int L1 = 0; L1 < static_cast<int>(n); L1++)
                {
                    // Operation
                    op1 = L1;                     
                    if(op1 > V_size){op1 = V_size - 1;}
                    V1(op1) = V2(op1) * V2(op1);  
                }
            } 
       }  
       // Function 6
       template<typename T>
       void F_6(size_t n, size_t p, 
                       Vector<T> &V1, Vector<T> &V2, Vector<T> &V3, Vector<T> &V_MPI,
                       size_t V_size, size_t V_MPI_size, int rank, int num_proc)
       {
            // Initialization
            int op0; int op1; int op2; int op3; int op4; int op5;             
            // Communication
            for (int L0 = 0; L0 < 1; L0++)
            {
                MPI_Scatter(V_MPI.data, V_size, MPI_INT, V1.data, V_size, MPI_INT, 0, MPI_COMM_WORLD);
            }    
            // Computation            
            for (int L0 = 0; L0 < static_cast<int>(pow(n, 1.0 / 2.0)); L0++)
            {                    
                for (int L1 = 0; L1 < static_cast<int>(n); L1++)
                {
                    // Operation
                    op1 = L1;                     
                    if(op1 > V_size){op1 = V_size - 1;}
                    V1(op1) = V2(op1) * V2(op1);  
                }
            }
       }  
       // Function 7
       template<typename T>
       void F_7(size_t n, size_t p, 
                       Vector<T> &V1, Vector<T> &V2, Vector<T> &V3, Vector<T> &V_MPI,
                       size_t V_size, size_t V_MPI_size, int rank, int num_proc)
       {
            // Initialization
            int op0; int op1; int op2; int op3; int op4; int op5;             
            // Communication
            for (int L0 = 0; L0 < 1; L0++)
            {
                MPI_Gather(V2.data, V_size, MPI_INT, V_MPI.data, V_size, MPI_INT, 0, MPI_COMM_WORLD);
            }    
            // Computation            
            for (int L0 = 0; L0 < static_cast<int>(pow(n, 1.0 / 2.0)); L0++)
            {                    
                for (int L1 = 0; L1 < static_cast<int>(n); L1++)
                {
                    // Operation
                    op1 = L1;                     
                    if(op1 > V_size){op1 = V_size - 1;}
                    V1(op1) = V2(op1) * V2(op1);  
                }
            }
       }  
       // Function 8
       template<typename T>
       void F_8(size_t n, size_t p, 
                       Vector<T> &V1, Vector<T> &V2, Vector<T> &V3, Vector<T> &V_MPI,
                       size_t V_size, size_t V_MPI_size, int rank, int num_proc)
       {
            // Initialization
            int op0; int op1; int op2; int op3; int op4; int op5;             
            // Communication
            for (int L0 = 0; L0 < 1; L0++)
            {                
                if (rank == 0)
                {
                    for(int dest = 1; dest < num_proc; dest++)
                    {MPI_Send(V1.data, V_size, MPI_INT, dest, 0, MPI_COMM_WORLD);}  // Process 0 sends data to all process
                }
                else
                {MPI_Recv(V2.data, V_size, MPI_INT, 0, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);}  // Other process receives data from process 0
                MPI_Barrier(MPI_COMM_WORLD);
            }       
            // Computation            
            for (int L0 = 0; L0 < static_cast<int>(pow(n, 1.0 / 2.0)); L0++)
            {                    
                for (int L1 = 0; L1 < static_cast<int>(n); L1++)
                {
                    // Operation
                    op1 = L1;                     
                    if(op1 > V_size){op1 = V_size - 1;}
                    V1(op1) = V2(op1) * V2(op1);  
                }
            }
       }  
       // Function 9
       template<typename T>
       void F_9(size_t n, size_t p, 
                       Vector<T> &V1, Vector<T> &V2, Vector<T> &V3, Vector<T> &V_MPI,
                       size_t V_size, size_t V_MPI_size, int rank, int num_proc)
       {
            // Initialization
            int op0; int op1; int op2; int op3; int op4; int op5;   
            // Communication
            for (int L0 = 0; L0 < 1; L0++)
            {                
                if (rank == 0)
                {
                    for(int dest = 1; dest < num_proc; dest++)
                    {MPI_Send(V1.data, V_size, MPI_INT, dest, 0, MPI_COMM_WORLD);}  // Process 0 sends data to all process
                }
                else
                {MPI_Recv(V2.data, V_size, MPI_INT, 0, 0, MPI_COMM_WORLD, MPI_STATUS_IGNORE);}  // Other process receives data from process 0
                MPI_Barrier(MPI_COMM_WORLD);
            }            
            // Computation            
            for (int L0 = 0; L0 < static_cast<int>(pow(n, 1.0 / 2.0)); L0++)
            {                    
                for (int L1 = 0; L1 < static_cast<int>(n); L1++)
                {
                    // Operation
                    op1 = L1;                     
                    if(op1 > V_size){op1 = V_size - 1;}
                    V1(op1) = V2(op1) * V2(op1);  
                }
            } 
       }  
    }       
}

// ----------------------
// Modeling 
// ----------------------
void MODEL_1(size_t n, size_t p, int rank, int num_proc)
{
   // Initialization    
   size_t n_v = n * 10;   
   size_t V_size        = static_cast<int>(n_v);
   size_t V_MPI_size    = static_cast<int>(n_v * num_proc);
   // Config 1
   bg::Vector<TYPE> V1(static_cast<size_t>(V_size));
   bg::Vector<TYPE> V2(static_cast<size_t>(V_size));
   bg::Vector<TYPE> V3(static_cast<size_t>(V_size));
   bg::Vector<TYPE> V_MPI(static_cast<size_t>(V_MPI_size));

   // Loop function 
   int loop_function = 50;

   // Assign values in rank 0 
   if(rank == 0)
   {
       for (int loop = 0; loop < V_size; loop++)
       {
           V1(loop) = rand() % 1000;
           V2(loop) = rand() % 1000;
           V3(loop) = rand() % 1000;
       }
       for (int loop = 0; loop < V_MPI_size; loop++)
       {
           V_MPI(loop) = rand() % 1000;
       }
   }
   // Function execution 
   for (int loop = 0; loop < loop_function; loop++)  
   {
        bg::function::F_0(n, p, V1, V2, V3, V_MPI, 
                                V_size, V_MPI_size, rank, num_proc); 
        bg::function::F_1(n, p, V1, V2, V3, V_MPI, 
                                V_size, V_MPI_size, rank, num_proc);          
        bg::function::F_2(n, p, V1, V2, V3, V_MPI, 
                                V_size, V_MPI_size, rank, num_proc); 
        bg::function::F_3(n, p, V1, V2, V3, V_MPI, 
                                V_size, V_MPI_size, rank, num_proc); 
        bg::function::F_4(n, p, V1, V2, V3, V_MPI, 
                                V_size, V_MPI_size, rank, num_proc);  
        bg::function::F_5(n, p, V1, V2, V3, V_MPI, 
                                V_size, V_MPI_size, rank, num_proc); 
        bg::function::F_6(n, p, V1, V2, V3, V_MPI, 
                                V_size, V_MPI_size, rank, num_proc); 
        bg::function::F_7(n, p, V1, V2, V3, V_MPI, 
                                V_size, V_MPI_size, rank, num_proc);  
        bg::function::F_8(n, p, V1, V2, V3, V_MPI, 
                                V_size, V_MPI_size, rank, num_proc); 
        bg::function::F_9(n, p, V1, V2, V3, V_MPI, 
                                V_size, V_MPI_size, rank, num_proc);                
   }
}

// ----------------------
// Main
// ----------------------
int main(int argc, char** argv) 
{    
    // MPI Initialization
    int rank, num_proc;
    MPI_Init(&argc, &argv);    
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &num_proc);

    // Default Value
    size_t n = 1;
    std::string flag_n;
    double x = 1.0;
    std::string flag_x;    
    size_t p = 1;
    
    // Input - Arguments
    for ( int loop = 1; loop < argc; ++loop )
    {
       if ( strcmp( "-n", argv[ loop ] ) == 0 )
       {
           flag_n = argv[ loop ];
           if ( ++loop < argc )
           {
               n = std::strtoull( argv[ loop ], NULL, 0 ); 
           }
       }
       if ( strcmp( "-x", argv[ loop ] ) == 0 )
       {
           flag_x = argv[ loop ];
           if ( ++loop < argc )
           {
               x = std::strtoull( argv[ loop ], NULL, 0 ); 
           }
       }   
    }
    // Addjust input
    //x = 100;
    //p = num_proc * x;
    // Adjust - constant multiplication 
    x = 0.1 * x;
    n = n * x;
    p = num_proc * 1000;
    
    // Print input
    if (rank == 0)
    {
       std::cout << "BENCHMARK GENERATOR " << std::endl << std::endl;
       
       std::cout << "MPI" << std::endl;
       std::cout << "Number of processors = " << num_proc << std::endl << std::endl;
       
       if (flag_n != "-n")
       {
           std::cout << "Input size (default value): n = " << n << std::endl;
       }
       else if (flag_n == "-n")
       {
           std::cout << "Input size: n = " << n << std::endl;
       }

       if (flag_x != "-x")
       {
           std::cout << "Input size (default value): x = " << x << std::endl;
       }
       else if (flag_x == "-x")
       {
           std::cout << "Input size: x = " << x << std::endl;
       }
       
       std::cout << "Input size: p = " << p << std::endl;
    }  

    // Operational Functions
    MODEL_1(n, p, rank, num_proc);    
    
    // End Function
    MPI_Finalize(); 
    return 0;
}

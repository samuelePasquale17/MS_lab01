# Lab 1: Parametric VHDL and Synthesis

## List of Exercises

### ex2.1.1 Parametric 2-to-1 Multiplexer
- **Description**: Implementation of a parametric **2-to-1 multiplexer** using both structural and behavioral VHDL descriptions. The design supports generic parallelism for N-bit input data.

### ex3.1.1 Parametric Registers
- **Description**: Design of edge-triggered **D-type flip-flop registers** with parametric data parallelism. Two versions were implemented to support both synchronous and asynchronous reset.

### ex4.1.1 Synthesis of the Generic MUX
- **Description**: Synthesis of the parametric **2-to-1 multiplexer**. The design was analyzed for area and timing performance across different configurations.

### ex4.2.1 Synthesis of the Registers
- **Description**: Synthesis of the parametric registers. Both synchronous and asynchronous reset versions were evaluated for timing and area.

### ex5.1.1 Ripple Carry Adder (RCA)
- **Description**: Design of a **Ripple Carry Adder (RCA)** with both structural and behavioral implementations. The design was extended to support generic parallelism.

### ex5.2.1 Synthesis of the RCA
- **Description**: Synthesis of the **Ripple Carry Adder**. Timing analysis and critical path evaluation were performed for structural and behavioral implementations.

### ex6.1.1 Structural Accumulator
- **Description**: Implementation of a **structural accumulator** using components such as MUX, register, and adder. The design supports parametric data parallelism.

### ex6.2.1 Behavioral Accumulator
- **Description**: Design of a **behavioral accumulator** using concurrent processes to model its functionality. The implementation supports parametric parallelism.

### ex6.3.1 Synthesis of the Accumulator
- **Description**: Synthesis of both the structural and behavioral accumulator architectures. Comparisons were made to analyze area and timing performance.

### ex7.1.1 Behavioral ALU
- **Description**: Design of a **behavioral Arithmetic and Logic Unit (ALU)** supporting multiple operations, including addition, subtraction, multiplication, bitwise logic, and shifts. The design uses a case statement to select the desired operation.

### ex7.2.1 Synthesis of the ALU
- **Description**: Synthesis of the **ALU** with analysis of its timing and area performance. The final design includes all operations for a small number of bits.

# Lloyd's implementation - v3

This folder contains three versions of Lloyd's implementation with the padding approach. All implementations leverage the parallelism of Lloyd's algorithm, utilizing two Xilinx AI Engines (AIEs).

## Overview

The implementations allow the program to accept a user-defined number of points and clusters as input, without constraints on their quantity.

## Folder Structure

- **p1:** Contains the code with only the padding approach.
- **p2:** Contains the padded code with the chess_loop_range approach.
- **p3:** Contains the padded code with both the chess_loop_range and chess_prepare_for_pipelining approaches.

Each implementation showcases a different optimization strategy to enhance performance and demonstrate flexibility in handling clustering tasks using AI Engines.
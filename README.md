# Tic-Tac-Toe-FPGA
This project was developed for the Design with Programmable Logic class in colaboration with John Deere.

This game uses the integrated accelerometer and buttons to allow the user to select any of the squares, which is displayed in a monitor via VGA. 

## Entities
* Control: It recieves the position of the board from the accelerometer and the state of the buttons to interpret the position of the selector and if the current square is chosen.

<p align="center">
  <img src="https://user-images.githubusercontent.com/74482029/206974791-379599fc-91c1-420a-9062-89fb66041ac7.png">
</p>

 * Display: It recieves the active player, selected squares and current position of the selector. With this data it generates a signal for VGA R, G and B as well as hsync and vsync, which allow to display the game via the integrated VGA port.

<p align="center">
  <img src="https://user-images.githubusercontent.com/74482029/206974847-2741b58e-f663-4faa-82ed-c0e2247a0b18.png">
</p>

In this project we used:
* Design with FPGA
* VGA standard
* Sensor interfacing
* SPI protocol

## List of materials
* DE10-Lite board
* VGA monitor
* VGA cable

## Evidence
<p align="center">
<img width="320" height="240" src="https://user-images.githubusercontent.com/74482029/206976424-d08ca2f0-9880-4649-8f4c-897684c5edf2.png">

<img width="320" height="240" src="https://user-images.githubusercontent.com/74482029/206976483-1253e64d-ba1c-4f5a-a9ac-2ccc332f4323.png">

</p>

## Team Members
* Jorge Askur Vazquez Fernandez
* Jose Miguel Varela 
* Sebastian Joya Paez
* Jose Miguel Flores Gonzalez


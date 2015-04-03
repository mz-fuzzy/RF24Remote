v 20130925 2
C 41100 43800 1 0 0 atmega328.sym
{
T 42600 49900 5 10 1 1 0 6 1
refdes=U1
T 40600 46000 5 10 0 0 0 0 1
device=Atmega328
T 40600 46200 5 10 0 0 0 0 1
footprint=TQFP32_7
}
C 40500 50200 1 0 0 vcc-1.sym
{
T 40500 50200 5 10 0 0 0 0 1
netname=Vcc
}
N 41100 49300 40700 49300 4
N 40700 48900 40700 50200 4
{
T 40700 48900 5 10 0 0 0 0 1
netname=Vcc
}
N 41100 49100 40700 49100 4
C 40500 46400 1 0 0 gnd-1.sym
{
T 40500 46400 5 10 0 0 0 0 1
netname=GND
}
N 41100 47500 40600 47500 4
N 40600 46700 40600 47900 4
N 41100 47700 40600 47700 4
N 41100 47900 40600 47900 4
C 53800 48400 1 270 0 crystal-1.sym
{
T 54300 48200 5 10 0 0 270 0 1
device=CRYSTAL
T 53400 48100 5 10 1 1 0 0 1
refdes=Q1
T 54500 48200 5 10 0 0 270 0 1
symversion=0.1
T 53100 47900 5 10 1 1 0 0 1
value=12MHz
T 53800 48400 5 10 0 0 0 0 1
footprint=hc49smt
}
C 55000 49500 1 270 0 capacitor-1.sym
{
T 55700 49300 5 10 0 0 270 0 1
device=CAPACITOR
T 55400 49200 5 10 1 1 0 0 1
refdes=C5
T 55900 49300 5 10 0 0 270 0 1
symversion=0.1
T 55000 49500 5 10 0 0 0 0 1
footprint=0805
T 55400 48800 5 10 1 1 0 0 1
value=100n
}
C 54300 47300 1 0 0 capacitor-1.sym
{
T 54500 48000 5 10 0 0 0 0 1
device=CAPACITOR
T 54400 47700 5 10 1 1 0 0 1
refdes=C6
T 54500 48200 5 10 0 0 0 0 1
symversion=0.1
T 54300 47300 5 10 0 0 0 0 1
footprint=0805
T 54300 47300 5 10 1 1 0 0 1
value=22p
}
C 54300 48400 1 0 0 capacitor-1.sym
{
T 54500 49100 5 10 0 0 0 0 1
device=CAPACITOR
T 54400 48800 5 10 1 1 0 0 1
refdes=C4
T 54500 49300 5 10 0 0 0 0 1
symversion=0.1
T 54300 48400 5 10 1 1 0 0 1
value=22p
T 54300 48400 5 10 0 0 0 0 1
footprint=0805
}
N 53700 47500 54300 47500 4
{
T 53700 47500 5 10 0 0 0 0 1
netname=XTAL2
}
N 53900 47500 53900 47700 4
N 53700 48600 54300 48600 4
{
T 53700 48600 5 10 0 0 0 0 1
netname=XTAL1
}
N 53900 48400 53900 48600 4
N 55200 46700 55200 48600 4
C 55000 50000 1 0 0 vcc-1.sym
{
T 55000 50000 5 10 0 0 0 0 1
netname=Vcc
}
C 53100 48500 1 0 0 in-1.sym
{
T 53100 48800 5 10 0 0 0 0 1
device=INPUT
T 52500 48600 5 10 1 1 0 0 1
comment=XTAL1
T 53100 48500 5 10 0 0 0 0 1
graphical=1
}
C 53100 47400 1 0 0 in-1.sym
{
T 53100 47700 5 10 0 0 0 0 1
device=INPUT
T 52500 47500 5 10 1 1 0 0 1
comment=XTAL2
T 53100 47400 5 10 0 0 0 0 1
graphical=1
}
C 55100 46400 1 0 0 gnd-1.sym
{
T 55100 46400 5 10 0 0 0 0 1
netname=GND
}
C 44800 48100 1 0 0 out-1.sym
{
T 44800 48400 5 10 0 0 0 0 1
device=none
T 45400 48200 5 10 1 1 0 0 1
comment=XTAL1
T 44800 48100 5 10 0 0 0 0 1
graphical=1
}
N 44800 48200 44700 48200 4
{
T 44800 48200 5 10 0 0 0 0 1
netname=XTAL1
}
C 44800 47900 1 0 0 out-1.sym
{
T 44800 48200 5 10 0 0 0 0 1
device=none
T 45400 48000 5 10 1 1 0 0 1
comment=XTAL2
T 44800 47900 5 10 0 0 0 0 1
graphical=1
}
N 44700 48000 44800 48000 4
{
T 44700 48000 5 10 0 0 0 0 1
netname=XTAL2
}
C 44800 48900 1 0 0 out-1.sym
{
T 44800 49200 5 10 0 0 0 0 1
device=OUTPUT
T 45400 49000 5 10 1 1 0 0 1
comment=RF_CE1
T 44800 48900 5 10 0 0 0 0 1
graphical=1
}
N 44700 49000 44800 49000 4
{
T 44700 49000 5 10 0 0 0 0 1
netname=RF_CE1
}
C 44800 45300 1 0 0 out-1.sym
{
T 44800 45600 5 10 0 0 0 0 1
device=OUTPUT
T 45400 45400 5 10 1 1 0 0 1
comment=USB_D-
T 44800 45300 5 10 0 0 0 0 1
graphical=1
}
N 44700 45400 44800 45400 4
{
T 44700 45400 5 10 0 0 0 0 1
netname=USB_D-
}
C 44800 48700 1 0 0 out-1.sym
{
T 44800 49000 5 10 0 0 0 0 1
device=none
T 45400 48800 5 10 1 1 0 0 1
comment=SPI_MOSI
T 44800 48700 5 10 0 0 0 0 1
graphical=1
}
N 44700 48800 44800 48800 4
{
T 44700 48800 5 10 0 0 0 0 1
netname=SPI_MOSI
}
C 44800 48500 1 0 0 out-1.sym
{
T 44800 48800 5 10 0 0 0 0 1
device=none
T 45400 48600 5 10 1 1 0 0 1
comment=SPI_MISO
T 44800 48500 5 10 0 0 0 0 1
graphical=1
}
N 44800 48600 44700 48600 4
{
T 44800 48600 5 10 0 0 0 0 1
netname=SPI_MISO
}
C 44800 48300 1 0 0 out-1.sym
{
T 44800 48600 5 10 0 0 0 0 1
device=none
T 45400 48400 5 10 1 1 0 0 1
comment=SPI_SCK
T 44800 48300 5 10 0 0 0 0 1
graphical=1
}
N 44700 48400 44800 48400 4
{
T 44700 48400 5 10 0 0 0 0 1
netname=SPI_SCK
}
C 44800 45500 1 0 0 out-1.sym
{
T 44800 45800 5 10 0 0 0 0 1
device=OUTPUT
T 45400 45600 5 10 1 1 0 0 1
comment=USB_D+
T 44800 45500 5 10 0 0 0 0 1
graphical=1
}
N 44700 45600 44800 45600 4
{
T 44700 45600 5 10 0 0 0 0 1
netname=USB_D+
}
C 44800 44900 1 0 0 out-1.sym
{
T 44800 45200 5 10 0 0 0 0 1
device=OUTPUT
T 45400 45000 5 10 1 1 0 0 1
comment=RF_IRQ2
T 44800 44900 5 10 0 0 0 0 1
graphical=1
}
N 44700 45000 44800 45000 4
{
T 44700 45000 5 10 0 0 0 0 1
netname=RF_IRQ2
}
C 44800 45100 1 0 0 out-1.sym
{
T 44800 45400 5 10 0 0 0 0 1
device=none
T 45400 45200 5 10 1 1 0 0 1
comment=PD4
T 44800 45100 5 10 0 0 0 0 1
graphical=1
}
N 44700 45200 44800 45200 4
{
T 44700 45200 5 10 0 0 0 0 1
netname=PD4
}
C 44800 44100 1 0 0 out-1.sym
{
T 44800 44400 5 10 0 0 0 0 1
device=OUTPUT
T 45400 44200 5 10 1 1 0 0 1
comment=ADC6
T 44800 44100 5 10 0 0 0 0 1
graphical=1
}
N 44800 44200 44700 44200 4
{
T 44800 44200 5 10 0 0 0 0 1
netname=ADC6
}
N 55200 50000 55200 49500 4
{
T 55200 50000 5 10 0 0 0 0 1
netname=Vcc
}
C 44800 46700 1 0 0 out-1.sym
{
T 44800 47000 5 10 0 0 0 0 1
device=OUTPUT
T 45400 46800 5 10 1 1 0 0 1
comment=BASE_LED3
T 44800 46700 5 10 0 0 0 0 1
graphical=1
}
N 44700 46800 44800 46800 4
{
T 44700 46800 5 10 0 0 0 0 1
netname=BASE_LED3
}
C 44800 46500 1 0 0 out-1.sym
{
T 44800 46800 5 10 0 0 0 0 1
device=OUTPUT
T 45400 46600 5 10 1 1 0 0 1
comment=PGM
T 44800 46500 5 10 0 0 0 0 1
graphical=1
}
C 44800 46300 1 0 0 out-1.sym
{
T 44800 46600 5 10 0 0 0 0 1
device=OUTPUT
T 45400 46400 5 10 1 1 0 0 1
comment=RESET
T 44800 46300 5 10 0 0 0 0 1
graphical=1
}
N 44700 46600 44800 46600 4
{
T 44700 46600 5 10 0 0 0 0 1
netname=PGM
}
N 44700 46400 44800 46400 4
{
T 44700 46400 5 10 0 0 0 0 1
netname=RESET
}
C 44800 47300 1 0 0 out-1.sym
{
T 44800 47600 5 10 0 0 0 0 1
device=none
T 45400 47400 5 10 1 1 0 0 1
comment=PC1
T 44800 47300 5 10 0 0 0 0 1
graphical=1
}
C 44800 47100 1 0 0 out-1.sym
{
T 44800 47400 5 10 0 0 0 0 1
device=none
T 45400 47200 5 10 1 1 0 0 1
comment=BASE_LED1
T 44800 47100 5 10 0 0 0 0 1
graphical=1
}
N 44700 47400 44800 47400 4
{
T 44700 47400 5 10 0 0 0 0 1
netname=PC1
}
N 44700 47200 44800 47200 4
{
T 44700 47200 5 10 0 0 0 0 1
netname=BASE_LED1
}
C 44800 46900 1 0 0 out-1.sym
{
T 44800 47200 5 10 0 0 0 0 1
device=none
T 45400 47000 5 10 1 1 0 0 1
comment=BASE_LED2
T 44800 46900 5 10 0 0 0 0 1
graphical=1
}
N 44800 47000 44700 47000 4
{
T 44800 47000 5 10 0 0 0 0 1
netname=BASE_LED2
}
C 44800 49300 1 0 0 out-1.sym
{
T 44800 49600 5 10 0 0 0 0 1
device=none
T 45400 49400 5 10 1 1 0 0 1
comment=RF_IRQ1
T 44800 49300 5 10 0 0 0 0 1
graphical=1
}
C 44800 44700 1 0 0 out-1.sym
{
T 44800 45000 5 10 0 0 0 0 1
device=none
T 45400 44800 5 10 1 1 0 0 1
comment=RF_CE2
T 44800 44700 5 10 0 0 0 0 1
graphical=1
}
N 44700 49400 44800 49400 4
{
T 44700 49400 5 10 0 0 0 0 1
netname=RF_IRQ1
}
N 44700 44800 44800 44800 4
{
T 44700 44800 5 10 0 0 0 0 1
netname=RF_CE2
}
C 44800 45900 1 0 0 out-1.sym
{
T 44800 46200 5 10 0 0 0 0 1
device=none
T 45400 46000 5 10 1 1 0 0 1
comment=SERIAL_RX
T 44800 45900 5 10 0 0 0 0 1
graphical=1
}
N 44700 46000 44800 46000 4
{
T 44700 46000 5 10 0 0 0 0 1
netname=SERIAL_RX
}
C 44800 43900 1 0 0 out-1.sym
{
T 44800 44200 5 10 0 0 0 0 1
device=OUTPUT
T 45400 44000 5 10 1 1 0 0 1
comment=ADC7
T 44800 43900 5 10 0 0 0 0 1
graphical=1
}
N 44700 44000 44800 44000 4
{
T 44800 44000 5 10 0 0 0 0 1
netname=ADC7
}
C 44800 47500 1 0 0 out-1.sym
{
T 44800 47800 5 10 0 0 0 0 1
device=none
T 45400 47600 5 10 1 1 0 0 1
comment=PC0
T 44800 47500 5 10 0 0 0 0 1
graphical=1
}
N 44700 47600 44800 47600 4
{
T 44700 47600 5 10 0 0 0 0 1
netname=PC0
}
C 44800 45700 1 0 0 out-1.sym
{
T 44800 46000 5 10 0 0 0 0 1
device=none
T 45400 45800 5 10 1 1 0 0 1
comment=SERIAL_TX
T 44800 45700 5 10 0 0 0 0 1
graphical=1
}
N 44700 45800 44800 45800 4
{
T 44700 45800 5 10 0 0 0 0 1
netname=SERIAL_TX
}
C 44800 49100 1 0 0 out-1.sym
{
T 44800 49400 5 10 0 0 0 0 1
device=none
T 45400 49200 5 10 1 1 0 0 1
comment=RF_CS1
T 44800 49100 5 10 0 0 0 0 1
graphical=1
}
N 44700 49200 44800 49200 4
{
T 44700 49200 5 10 0 0 0 0 1
netname=RF_CS1
}
C 44800 44500 1 0 0 out-1.sym
{
T 44800 44800 5 10 0 0 0 0 1
device=none
T 45400 44600 5 10 1 1 0 0 1
comment=RF_CS2
T 44800 44500 5 10 0 0 0 0 1
graphical=1
}
N 44700 44600 44800 44600 4
{
T 44700 44600 5 10 0 0 0 0 1
netname=RF_CS2
}
C 49200 52200 1 0 0 gnd-1.sym
{
T 49200 52200 5 10 0 0 0 0 1
netname=GND
}
N 44600 53100 49300 53100 4
N 44600 54000 51900 54000 4
{
T 67700 65700 5 10 0 0 0 0 1
netname=PWR_SWITCH
}
C 63400 49100 1 180 0 connector6-1.sym
{
T 61600 47300 5 10 0 0 180 0 1
device=CONNECTOR_6
T 63500 49300 5 10 1 1 180 0 1
refdes=CONN9
T 63400 49100 5 10 0 0 0 0 1
footprint=CONNECTOR 3 2
T 63000 47000 5 10 1 1 0 0 1
value=ICSP
}
C 60100 47300 1 0 0 in-1.sym
{
T 60100 47600 5 10 0 0 0 0 1
device=INPUT
T 59200 47400 5 10 1 1 0 0 1
comment=SPI_MISO
T 60100 47300 5 10 0 0 0 0 1
graphical=1
}
N 60700 47400 61700 47400 4
{
T 60700 47400 5 10 0 0 0 0 1
netname=SPI_MISO
}
C 61200 49700 1 0 0 vcc-1.sym
{
T 61200 49700 5 10 0 0 0 0 1
netname=Vcc
}
N 61400 49700 61400 47700 4
N 61400 47700 61700 47700 4
C 60100 47900 1 0 0 in-1.sym
{
T 60100 48200 5 10 0 0 0 0 1
device=INPUT
T 59300 48000 5 10 1 1 0 0 1
comment=SPI_SCK
T 60100 47900 5 10 0 0 0 0 1
graphical=1
}
N 61700 48000 60700 48000 4
{
T 61700 48000 5 10 0 0 0 0 1
netname=SPI_SCK
}
C 60100 48200 1 0 0 in-1.sym
{
T 60100 48500 5 10 0 0 0 0 1
device=INPUT
T 59200 48300 5 10 1 1 0 0 1
comment=SPI_MOSI
T 60100 48200 5 10 0 0 0 0 1
graphical=1
}
N 60700 48300 61700 48300 4
{
T 60700 48300 5 10 0 0 0 0 1
netname=SPI_MOSI
}
C 60100 48500 1 0 0 in-1.sym
{
T 60100 48800 5 10 0 0 0 0 1
device=none
T 59400 48600 5 10 1 1 0 0 1
comment=RESET
T 60100 48500 5 10 0 0 0 0 1
graphical=1
}
N 60700 48600 61700 48600 4
{
T 60600 48600 5 10 0 0 0 0 1
netname=RESET
}
C 60900 46200 1 0 0 gnd-1.sym
{
T 60900 46200 5 10 0 0 0 0 1
netname=GND
}
N 61000 48900 61000 46500 4
N 61000 48900 61700 48900 4
C 47900 53800 1 180 0 in-1.sym
{
T 47900 53500 5 10 0 0 180 0 1
device=INPUT
T 48600 53800 5 10 1 1 180 0 1
comment=USB_D-
T 47900 53800 5 10 0 0 180 0 1
graphical=1
}
N 47100 53700 47300 53700 4
{
T 47700 53700 5 10 0 0 180 0 1
netname=USB_D-
}
C 47900 53500 1 180 0 in-1.sym
{
T 47900 53200 5 10 0 0 180 0 1
device=INPUT
T 48600 53400 5 10 1 1 180 0 1
comment=USB_D+
T 47900 53500 5 10 0 0 180 0 1
graphical=1
}
N 47100 53400 47300 53400 4
{
T 47700 53400 5 10 0 0 180 0 1
netname=USB_D+
}
C 45300 55400 1 270 0 resistor-2.sym
{
T 45650 55000 5 10 0 0 270 0 1
device=RESISTOR
T 45800 55300 5 10 1 1 180 0 1
refdes=R1
T 45300 55400 5 10 0 0 0 0 1
footprint=0805
T 45800 54700 5 10 1 1 180 0 1
value=1k5
}
N 45400 53700 45400 54500 4
N 41100 48900 40700 48900 4
C 49600 55700 1 0 0 out-1.sym
{
T 49600 56000 5 10 0 0 0 0 1
device=none
T 49600 55500 5 10 1 1 0 0 1
comment=VCC_5V
T 49600 55700 5 10 0 0 0 0 1
graphical=1
}
N 49600 55800 49300 55800 4
{
T 49600 55800 5 10 0 0 0 0 1
netname=VCC_5V
}
N 49300 55800 49300 54000 4
N 65200 40300 64900 40300 4
N 64900 39000 64900 40000 4
{
T 64900 38400 5 10 0 0 90 0 1
netname=GSW
}
N 64900 42800 64900 40300 4
{
T 64900 43600 5 10 0 0 0 0 1
netname=Vcc
}
C 63600 41100 1 0 0 in-1.sym
{
T 63600 41400 5 10 0 0 0 0 1
device=INPUT
T 62800 41200 5 10 1 1 0 0 1
comment=SPI_SCK
T 63600 41100 5 10 0 0 0 0 1
graphical=1
}
N 65200 41200 64200 41200 4
{
T 65200 41200 5 10 0 0 0 0 1
netname=SPI_SCK
}
C 63600 41700 1 0 0 in-1.sym
{
T 63600 42000 5 10 0 0 0 0 1
device=INPUT
T 62700 41800 5 10 1 1 0 0 1
comment=SPI_MISO
T 63600 41700 5 10 0 0 0 0 1
graphical=1
}
N 64200 41800 65200 41800 4
{
T 64200 41800 5 10 0 0 0 0 1
netname=SPI_MISO
}
C 63600 42000 1 0 0 in-1.sym
{
T 63600 42300 5 10 0 0 0 0 1
device=INPUT
T 62800 42100 5 10 1 1 0 0 1
comment=RF_IRQ1
T 63600 42000 5 10 0 0 0 0 1
graphical=1
}
N 64200 42100 65200 42100 4
{
T 64200 42100 5 10 0 0 0 0 1
netname=RF_IRQ1
}
C 63600 41400 1 0 0 in-1.sym
{
T 63600 41700 5 10 0 0 0 0 1
device=INPUT
T 62700 41500 5 10 1 1 0 0 1
comment=SPI_MOSI
T 63600 41400 5 10 0 0 0 0 1
graphical=1
}
N 64200 41500 65200 41500 4
{
T 64200 41500 5 10 0 0 0 0 1
netname=SPI_MOSI
}
C 63600 40800 1 0 0 in-1.sym
{
T 63600 41100 5 10 0 0 0 0 1
device=INPUT
T 62900 40900 5 10 1 1 0 0 1
comment=RF_CS1
T 63600 40800 5 10 0 0 0 0 1
graphical=1
}
N 64200 40900 65200 40900 4
{
T 64200 40900 5 10 0 0 0 0 1
netname=RF_CS1
}
C 63600 40500 1 0 0 in-1.sym
{
T 63600 40800 5 10 0 0 0 0 1
device=none
T 62900 40600 5 10 1 1 0 0 1
comment=RF_CE1
T 63600 40500 5 10 0 0 0 0 1
graphical=1
}
N 64200 40600 65200 40600 4
{
T 64200 40600 5 10 0 0 0 0 1
netname=RF_CE1
}
N 65200 40000 64900 40000 4
C 64700 42800 1 0 0 vcc-1.sym
{
T 64700 42800 5 10 0 0 0 0 1
netname=Vcc
}
C 66900 42300 1 180 0 connector8-1.sym
{
T 66800 39100 5 10 0 0 180 0 1
device=CONNECTOR_8
T 67000 42500 5 10 1 1 180 0 1
refdes=CONN3A
T 66200 39600 5 10 1 1 0 0 1
value=NRF24L01+
T 66900 42300 5 10 0 0 0 0 1
footprint=CONNECTOR 4 2
}
C 47100 53800 1 180 0 resistor-2.sym
{
T 46700 53450 5 10 0 0 180 0 1
device=RESISTOR
T 46900 53800 5 10 1 1 0 0 1
refdes=R2
T 47100 53800 5 10 0 0 270 0 1
footprint=0805
T 46200 53800 5 10 1 1 0 0 1
value=68R
}
C 47100 53500 1 180 0 resistor-2.sym
{
T 46700 53150 5 10 0 0 180 0 1
device=RESISTOR
T 46900 53100 5 10 1 1 0 0 1
refdes=R3
T 47100 53500 5 10 0 0 270 0 1
footprint=0805
T 46200 53100 5 10 1 1 0 0 1
value=68R
}
N 44600 53700 46200 53700 4
N 44600 53400 46200 53400 4
N 53100 54000 54500 54000 4
C 54300 55800 1 0 0 vcc-1.sym
{
T 54300 55800 5 10 0 0 0 0 1
netname=Vcc
}
N 54500 54000 54500 55800 4
C 51100 52700 1 90 0 capacitor-1.sym
{
T 50400 52900 5 10 0 0 90 0 1
device=CAPACITOR
T 50800 53000 5 10 1 1 180 0 1
refdes=C2
T 50200 52900 5 10 0 0 90 0 1
symversion=0.1
T 51100 52900 5 10 1 1 0 0 1
value=1u
T 51100 52700 5 10 0 0 0 0 1
footprint=0805
}
N 50900 52700 50900 52200 4
C 50800 51900 1 0 0 gnd-1.sym
{
T 50800 51900 5 10 0 0 0 0 1
netname=GND
}
N 49300 53100 49300 52500 4
C 53800 52600 1 90 0 capacitor-1.sym
{
T 53100 52800 5 10 0 0 90 0 1
device=CAPACITOR
T 53400 53000 5 10 1 1 180 0 1
refdes=C3
T 52900 52800 5 10 0 0 90 0 1
symversion=0.1
T 53800 52800 5 10 1 1 0 0 1
value=1u
T 53800 52600 5 10 0 0 0 0 1
footprint=0805
}
N 53600 52600 53600 52200 4
C 53500 51900 1 0 0 gnd-1.sym
{
T 53500 51900 5 10 0 0 0 0 1
netname=GND
}
N 53600 53500 53600 54000 4
C 45200 56000 1 0 0 vcc-1.sym
{
T 45200 56000 5 10 0 0 0 0 1
netname=Vcc
}
N 45400 55400 45400 56000 4
N 52500 52200 52500 53600 4
C 52400 51900 1 0 0 gnd-1.sym
{
T 52400 51900 5 10 0 0 0 0 1
netname=GND
}
N 50900 53600 50900 54000 4
N 57400 42600 57400 42200 4
C 57300 41900 1 0 0 gnd-1.sym
{
T 57300 41900 5 10 0 0 0 0 1
netname=GND
}
N 57400 43500 57400 44000 4
C 57600 42600 1 90 0 capacitor-1.sym
{
T 57700 42900 5 10 1 1 0 0 1
value=10u
T 56900 42800 5 10 0 0 90 0 1
device=CAPACITOR
T 57100 43300 5 10 1 1 180 0 1
refdes=C9
T 56700 42800 5 10 0 0 90 0 1
symversion=0.1
T 57600 42600 5 10 0 0 0 0 1
footprint=0805
}
C 57200 44000 1 0 0 vcc-1.sym
{
T 57200 44000 5 10 0 0 0 0 1
netname=Vcc
}
C 64800 38700 1 0 0 gnd-1.sym
{
T 64800 38700 5 10 0 0 0 0 1
netname=GND
}
C 42900 52900 1 0 0 connector4-1.sym
{
T 44700 53800 5 10 0 0 0 0 1
device=CONNECTOR_4
T 42900 54300 5 10 1 1 0 0 1
refdes=CONN8
T 42900 52700 5 10 1 1 0 0 1
value=USB A
T 42900 52900 5 10 0 1 0 0 1
footprint=usb-a-male-tht
}
C 60100 54900 1 0 0 led-2.sym
{
T 60200 55500 5 10 0 0 0 0 1
device=LED
T 60100 54900 5 10 0 0 180 0 1
footprint=0805
T 60700 54700 5 10 1 1 0 0 1
refdes=D1
}
C 59100 54900 1 0 0 resistor-2.sym
{
T 59500 55250 5 10 0 0 0 0 1
device=RESISTOR
T 59100 54900 5 10 0 0 180 0 1
footprint=0805
T 59200 54700 5 10 1 1 0 0 1
refdes=R4
T 59700 54700 5 10 1 1 0 0 1
value=470R
}
C 61100 51800 1 0 0 gnd-1.sym
{
T 61100 51800 5 10 0 0 0 0 1
netname=GND
}
N 61000 55000 61200 55000 4
N 61200 55000 61200 52100 4
N 60000 55000 60100 55000 4
C 58000 54900 1 0 0 in-1.sym
{
T 58000 55200 5 10 0 0 0 0 1
device=INPUT
T 58000 54900 5 10 0 0 0 0 1
graphical=1
T 56900 55000 5 10 1 1 0 0 1
comment=BASE_LED1
}
N 58600 55000 59100 55000 4
{
T 58600 55000 5 10 0 1 0 0 1
netname=BASE_LED1
}
C 51800 53500 1 0 0 Regulator_662K.sym
{
T 52300 54500 5 10 0 1 0 0 1
device=662K
T 52400 54300 5 10 1 1 0 0 1
refdes=U7
T 52700 54200 5 10 0 1 0 0 1
footprint=SOT23
}

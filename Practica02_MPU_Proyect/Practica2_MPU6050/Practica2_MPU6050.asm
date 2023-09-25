_MPU6050_Write:
;Practica2_MPU6050.c,127 :: 		void MPU6050_Write(unsigned char addr, int raddr, int rdata){
; rdata start address is: 8 (R2)
; raddr start address is: 4 (R1)
SUB	SP, SP, #8
STR	LR, [SP, #0]
STRB	R0, [SP, #4]
; rdata end address is: 8 (R2)
; raddr end address is: 4 (R1)
; raddr start address is: 4 (R1)
; rdata start address is: 8 (R2)
;Practica2_MPU6050.c,129 :: 		buf[0] = raddr;                          // register address
MOVW	R3, #lo_addr(_buf+0)
MOVT	R3, #hi_addr(_buf+0)
STRB	R1, [R3, #0]
; raddr end address is: 4 (R1)
;Practica2_MPU6050.c,131 :: 		buf[1] = rdata;                          // register data
MOVW	R3, #lo_addr(_buf+1)
MOVT	R3, #hi_addr(_buf+1)
STRB	R2, [R3, #0]
; rdata end address is: 8 (R2)
;Practica2_MPU6050.c,133 :: 		I2C1_Start();                            // issue I2C start signal
BL	_I2C1_Start+0
;Practica2_MPU6050.c,135 :: 		I2C1_Write(addr,buf,2,END_MODE_STOP);    // write data via I2C bus
MOVW	R3, #1
MOVS	R2, #2
MOVW	R1, #lo_addr(_buf+0)
MOVT	R1, #hi_addr(_buf+0)
LDRB	R0, [SP, #4]
BL	_I2C1_Write+0
;Practica2_MPU6050.c,137 :: 		}
L_end_MPU6050_Write:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _MPU6050_Write
_MPU6050_TEST:
;Practica2_MPU6050.c,141 :: 		int MPU6050_TEST(void){
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Practica2_MPU6050.c,143 :: 		buf[0] =  MPU6050_WHO_AM_I;          //Reconoce el sensor 7bits H
MOVS	R1, #117
MOVW	R0, #lo_addr(_buf+0)
MOVT	R0, #hi_addr(_buf+0)
STRB	R1, [R0, #0]
;Practica2_MPU6050.c,145 :: 		I2C1_Start();
BL	_I2C1_Start+0
;Practica2_MPU6050.c,147 :: 		I2C1_Write(MPU6050_ADDRESS, buf, 1, END_MODE_RESTART);
MOVW	R3, #0
MOVS	R2, #1
MOVW	R1, #lo_addr(_buf+0)
MOVT	R1, #hi_addr(_buf+0)
MOVS	R0, #104
BL	_I2C1_Write+0
;Practica2_MPU6050.c,149 :: 		I2C1_Read(MPU6050_ADDRESS, buf, 2, END_MODE_STOP);
MOVW	R3, #1
MOVS	R2, #2
MOVW	R1, #lo_addr(_buf+0)
MOVT	R1, #hi_addr(_buf+0)
MOVS	R0, #104
BL	_I2C1_Read+0
;Practica2_MPU6050.c,151 :: 		if(buf[0] == 0x68){
MOVW	R0, #lo_addr(_buf+0)
MOVT	R0, #hi_addr(_buf+0)
LDRB	R0, [R0, #0]
CMP	R0, #104
IT	NE
BNE	L_MPU6050_TEST0
;Practica2_MPU6050.c,153 :: 		return 1;
MOVS	R0, #1
SXTH	R0, R0
IT	AL
BAL	L_end_MPU6050_TEST
;Practica2_MPU6050.c,155 :: 		}
L_MPU6050_TEST0:
;Practica2_MPU6050.c,158 :: 		return 0;
MOVS	R0, #0
SXTH	R0, R0
;Practica2_MPU6050.c,162 :: 		}
L_end_MPU6050_TEST:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _MPU6050_TEST
_MPU6050_Read:
;Practica2_MPU6050.c,166 :: 		int MPU6050_Read(unsigned short addr, int raddr){
; raddr start address is: 4 (R1)
SUB	SP, SP, #8
STR	LR, [SP, #0]
STRB	R0, [SP, #4]
; raddr end address is: 4 (R1)
; raddr start address is: 4 (R1)
;Practica2_MPU6050.c,168 :: 		buf[0] = raddr;
MOVW	R2, #lo_addr(_buf+0)
MOVT	R2, #hi_addr(_buf+0)
STRB	R1, [R2, #0]
; raddr end address is: 4 (R1)
;Practica2_MPU6050.c,170 :: 		I2C1_Start();
BL	_I2C1_Start+0
;Practica2_MPU6050.c,172 :: 		I2C1_Write(addr,  buf, 1, END_MODE_RESTART);
MOVW	R3, #0
MOVS	R2, #1
MOVW	R1, #lo_addr(_buf+0)
MOVT	R1, #hi_addr(_buf+0)
LDRB	R0, [SP, #4]
BL	_I2C1_Write+0
;Practica2_MPU6050.c,174 :: 		I2C1_Read (addr,  buf, 2, END_MODE_STOP);
MOVW	R3, #1
MOVS	R2, #2
MOVW	R1, #lo_addr(_buf+0)
MOVT	R1, #hi_addr(_buf+0)
LDRB	R0, [SP, #4]
BL	_I2C1_Read+0
;Practica2_MPU6050.c,176 :: 		return buf[0];
MOVW	R2, #lo_addr(_buf+0)
MOVT	R2, #hi_addr(_buf+0)
LDRB	R0, [R2, #0]
;Practica2_MPU6050.c,178 :: 		}
L_end_MPU6050_Read:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _MPU6050_Read
_MPU6050_Init:
;Practica2_MPU6050.c,182 :: 		void MPU6050_Init(void){
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Practica2_MPU6050.c,189 :: 		MPU6050_Write(MPU6050_ADDRESS, MPU6050_CONFIG, 0x06);  //Anterior 0x03
MOVS	R2, #6
SXTH	R2, R2
MOVS	R1, #26
SXTH	R1, R1
MOVS	R0, #104
BL	_MPU6050_Write+0
;Practica2_MPU6050.c,194 :: 		MPU6050_Write(MPU6050_ADDRESS, MPU6050_ACCEL_CONFIG, 0x00);
MOVS	R2, #0
SXTH	R2, R2
MOVS	R1, #28
SXTH	R1, R1
MOVS	R0, #104
BL	_MPU6050_Write+0
;Practica2_MPU6050.c,198 :: 		MPU6050_Write(MPU6050_ADDRESS, MPU6050_GYRO_CONFIG, 0x10);
MOVS	R2, #16
SXTH	R2, R2
MOVS	R1, #27
SXTH	R1, R1
MOVS	R0, #104
BL	_MPU6050_Write+0
;Practica2_MPU6050.c,202 :: 		MPU6050_Write(MPU6050_ADDRESS, MPU6050_PWR_MGMT_1, 0x00);
MOVS	R2, #0
SXTH	R2, R2
MOVS	R1, #107
SXTH	R1, R1
MOVS	R0, #104
BL	_MPU6050_Write+0
;Practica2_MPU6050.c,204 :: 		}
L_end_MPU6050_Init:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _MPU6050_Init
_main:
;Practica2_MPU6050.c,208 :: 		void main() {
;Practica2_MPU6050.c,210 :: 		UART3_Init(19200);      //Baud Rate 19200
MOVW	R0, #19200
BL	_UART3_Init+0
;Practica2_MPU6050.c,212 :: 		Delay_ms(100);
MOVW	R7, #4521
MOVT	R7, #4
NOP
NOP
L_main2:
SUBS	R7, R7, #1
BNE	L_main2
NOP
NOP
;Practica2_MPU6050.c,214 :: 		I2C1_Init();          //I2C 1 puerto B
BL	_I2C1_Init+0
;Practica2_MPU6050.c,216 :: 		Delay_ms(1000);
MOVW	R7, #45225
MOVT	R7, #40
NOP
NOP
L_main4:
SUBS	R7, R7, #1
BNE	L_main4
NOP
NOP
;Practica2_MPU6050.c,218 :: 		UART3_Write_Text("Pre Init Okay"); //Conexion Correcta
MOVW	R0, #lo_addr(?lstr1_Practica2_MPU6050+0)
MOVT	R0, #hi_addr(?lstr1_Practica2_MPU6050+0)
BL	_UART3_Write_Text+0
;Practica2_MPU6050.c,220 :: 		UART3_Write(13);                  //Retorno de carro (salto de linea nivel prom)
MOVS	R0, #13
BL	_UART3_Write+0
;Practica2_MPU6050.c,222 :: 		MPU6050_Init();
BL	_MPU6050_Init+0
;Practica2_MPU6050.c,224 :: 		info = MPU6050_TEST();
BL	_MPU6050_TEST+0
MOVW	R1, #lo_addr(_info+0)
MOVT	R1, #hi_addr(_info+0)
STRH	R0, [R1, #0]
;Practica2_MPU6050.c,226 :: 		if (info == 1){
CMP	R0, #1
IT	NE
BNE	L_main6
;Practica2_MPU6050.c,228 :: 		UART3_Write_Text("MPU6050 OK");
MOVW	R0, #lo_addr(?lstr2_Practica2_MPU6050+0)
MOVT	R0, #hi_addr(?lstr2_Practica2_MPU6050+0)
BL	_UART3_Write_Text+0
;Practica2_MPU6050.c,230 :: 		UART3_Write(0x0A); //Line Feed LF
MOVS	R0, #10
BL	_UART3_Write+0
;Practica2_MPU6050.c,232 :: 		UART3_Write(0x0D); //Return Car CR
MOVS	R0, #13
BL	_UART3_Write+0
;Practica2_MPU6050.c,234 :: 		}
IT	AL
BAL	L_main7
L_main6:
;Practica2_MPU6050.c,238 :: 		UART3_Write_Text("MPU6050 Failed");
MOVW	R0, #lo_addr(?lstr3_Practica2_MPU6050+0)
MOVT	R0, #hi_addr(?lstr3_Practica2_MPU6050+0)
BL	_UART3_Write_Text+0
;Practica2_MPU6050.c,240 :: 		UART3_Write(0x0A); //Line Feed LF
MOVS	R0, #10
BL	_UART3_Write+0
;Practica2_MPU6050.c,242 :: 		UART3_Write(0x0D); //Return Car CR
MOVS	R0, #13
BL	_UART3_Write+0
;Practica2_MPU6050.c,244 :: 		}
L_main7:
;Practica2_MPU6050.c,246 :: 		Delay_ms(1000);
MOVW	R7, #45225
MOVT	R7, #40
NOP
NOP
L_main8:
SUBS	R7, R7, #1
BNE	L_main8
NOP
NOP
;Practica2_MPU6050.c,248 :: 		while(1){
L_main10:
;Practica2_MPU6050.c,252 :: 		ACCEL_XOUT_H = MPU6050_Read(MPU6050_ADDRESS, MPU6050_ACCEL_XOUT_H);
MOVS	R1, #59
SXTH	R1, R1
MOVS	R0, #104
BL	_MPU6050_Read+0
MOVW	R1, #lo_addr(_ACCEL_XOUT_H+0)
MOVT	R1, #hi_addr(_ACCEL_XOUT_H+0)
STRH	R0, [R1, #0]
;Practica2_MPU6050.c,254 :: 		ACCEL_XOUT_L = MPU6050_Read(MPU6050_ADDRESS, MPU6050_ACCEL_XOUT_L);
MOVS	R1, #60
SXTH	R1, R1
MOVS	R0, #104
BL	_MPU6050_Read+0
MOVW	R1, #lo_addr(_ACCEL_XOUT_L+0)
MOVT	R1, #hi_addr(_ACCEL_XOUT_L+0)
STRH	R0, [R1, #0]
;Practica2_MPU6050.c,256 :: 		ACCEL_YOUT_H = MPU6050_Read(MPU6050_ADDRESS, MPU6050_ACCEL_YOUT_H);
MOVS	R1, #61
SXTH	R1, R1
MOVS	R0, #104
BL	_MPU6050_Read+0
MOVW	R1, #lo_addr(_ACCEL_YOUT_H+0)
MOVT	R1, #hi_addr(_ACCEL_YOUT_H+0)
STRH	R0, [R1, #0]
;Practica2_MPU6050.c,258 :: 		ACCEL_YOUT_L = MPU6050_Read(MPU6050_ADDRESS, MPU6050_ACCEL_YOUT_L);
MOVS	R1, #62
SXTH	R1, R1
MOVS	R0, #104
BL	_MPU6050_Read+0
MOVW	R1, #lo_addr(_ACCEL_YOUT_L+0)
MOVT	R1, #hi_addr(_ACCEL_YOUT_L+0)
STRH	R0, [R1, #0]
;Practica2_MPU6050.c,260 :: 		ACCEL_ZOUT_H = MPU6050_Read(MPU6050_ADDRESS, MPU6050_ACCEL_ZOUT_H);
MOVS	R1, #63
SXTH	R1, R1
MOVS	R0, #104
BL	_MPU6050_Read+0
MOVW	R1, #lo_addr(_ACCEL_ZOUT_H+0)
MOVT	R1, #hi_addr(_ACCEL_ZOUT_H+0)
STRH	R0, [R1, #0]
;Practica2_MPU6050.c,262 :: 		ACCEL_ZOUT_L = MPU6050_Read(MPU6050_ADDRESS, MPU6050_ACCEL_ZOUT_L);
MOVS	R1, #64
SXTH	R1, R1
MOVS	R0, #104
BL	_MPU6050_Read+0
MOVW	R1, #lo_addr(_ACCEL_ZOUT_L+0)
MOVT	R1, #hi_addr(_ACCEL_ZOUT_L+0)
STRH	R0, [R1, #0]
;Practica2_MPU6050.c,265 :: 		ACCEL_XOUT = ( ACCEL_XOUT_H<<8 | ACCEL_XOUT_L );
MOVW	R1, #lo_addr(_ACCEL_XOUT_H+0)
MOVT	R1, #hi_addr(_ACCEL_XOUT_H+0)
LDRSH	R1, [R1, #0]
LSLS	R2, R1, #8
SXTH	R2, R2
MOVW	R1, #lo_addr(_ACCEL_XOUT_L+0)
MOVT	R1, #hi_addr(_ACCEL_XOUT_L+0)
LDRSH	R1, [R1, #0]
ORRS	R2, R1
MOVW	R1, #lo_addr(_ACCEL_XOUT+0)
MOVT	R1, #hi_addr(_ACCEL_XOUT+0)
STRH	R2, [R1, #0]
;Practica2_MPU6050.c,266 :: 		ACCEL_YOUT = ( ACCEL_YOUT_H<<8 | ACCEL_YOUT_L );
MOVW	R1, #lo_addr(_ACCEL_YOUT_H+0)
MOVT	R1, #hi_addr(_ACCEL_YOUT_H+0)
LDRSH	R1, [R1, #0]
LSLS	R2, R1, #8
SXTH	R2, R2
MOVW	R1, #lo_addr(_ACCEL_YOUT_L+0)
MOVT	R1, #hi_addr(_ACCEL_YOUT_L+0)
LDRSH	R1, [R1, #0]
ORRS	R2, R1
MOVW	R1, #lo_addr(_ACCEL_YOUT+0)
MOVT	R1, #hi_addr(_ACCEL_YOUT+0)
STRH	R2, [R1, #0]
;Practica2_MPU6050.c,267 :: 		ACCEL_ZOUT = ( ACCEL_ZOUT_H<<8 | ACCEL_ZOUT_L );
MOVW	R1, #lo_addr(_ACCEL_ZOUT_H+0)
MOVT	R1, #hi_addr(_ACCEL_ZOUT_H+0)
LDRSH	R1, [R1, #0]
LSLS	R1, R1, #8
SXTH	R1, R1
ORRS	R1, R0
MOVW	R0, #lo_addr(_ACCEL_ZOUT+0)
MOVT	R0, #hi_addr(_ACCEL_ZOUT+0)
STRH	R1, [R0, #0]
;Practica2_MPU6050.c,269 :: 		Delay_ms(100);  //estaba en 100
MOVW	R7, #4521
MOVT	R7, #4
NOP
NOP
L_main12:
SUBS	R7, R7, #1
BNE	L_main12
NOP
NOP
;Practica2_MPU6050.c,272 :: 		UART3_Write_Text(",");
MOVW	R0, #lo_addr(?lstr4_Practica2_MPU6050+0)
MOVT	R0, #hi_addr(?lstr4_Practica2_MPU6050+0)
BL	_UART3_Write_Text+0
;Practica2_MPU6050.c,273 :: 		IntToStr(ACCEL_XOUT,accel_x_out);
MOVW	R0, #lo_addr(_ACCEL_XOUT+0)
MOVT	R0, #hi_addr(_ACCEL_XOUT+0)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_accel_x_out+0)
MOVT	R1, #hi_addr(_accel_x_out+0)
BL	_IntToStr+0
;Practica2_MPU6050.c,274 :: 		UART3_Write_Text(accel_x_out);
MOVW	R0, #lo_addr(_accel_x_out+0)
MOVT	R0, #hi_addr(_accel_x_out+0)
BL	_UART3_Write_Text+0
;Practica2_MPU6050.c,275 :: 		UART3_Write_Text(",");
MOVW	R0, #lo_addr(?lstr5_Practica2_MPU6050+0)
MOVT	R0, #hi_addr(?lstr5_Practica2_MPU6050+0)
BL	_UART3_Write_Text+0
;Practica2_MPU6050.c,277 :: 		IntToStr(ACCEL_YOUT,accel_y_out);
MOVW	R0, #lo_addr(_ACCEL_YOUT+0)
MOVT	R0, #hi_addr(_ACCEL_YOUT+0)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_accel_y_out+0)
MOVT	R1, #hi_addr(_accel_y_out+0)
BL	_IntToStr+0
;Practica2_MPU6050.c,278 :: 		UART3_Write_Text(accel_y_out);
MOVW	R0, #lo_addr(_accel_y_out+0)
MOVT	R0, #hi_addr(_accel_y_out+0)
BL	_UART3_Write_Text+0
;Practica2_MPU6050.c,279 :: 		UART3_Write_Text(",");
MOVW	R0, #lo_addr(?lstr6_Practica2_MPU6050+0)
MOVT	R0, #hi_addr(?lstr6_Practica2_MPU6050+0)
BL	_UART3_Write_Text+0
;Practica2_MPU6050.c,281 :: 		IntToStr(ACCEL_ZOUT,accel_z_out);
MOVW	R0, #lo_addr(_ACCEL_ZOUT+0)
MOVT	R0, #hi_addr(_ACCEL_ZOUT+0)
LDRSH	R0, [R0, #0]
MOVW	R1, #lo_addr(_accel_z_out+0)
MOVT	R1, #hi_addr(_accel_z_out+0)
BL	_IntToStr+0
;Practica2_MPU6050.c,282 :: 		UART3_Write_Text(accel_z_out);
MOVW	R0, #lo_addr(_accel_z_out+0)
MOVT	R0, #hi_addr(_accel_z_out+0)
BL	_UART3_Write_Text+0
;Practica2_MPU6050.c,284 :: 		UART3_Write(0x0A); //Line Feed LF
MOVS	R0, #10
BL	_UART3_Write+0
;Practica2_MPU6050.c,285 :: 		UART3_Write(0x0D); //Return Car CR
MOVS	R0, #13
BL	_UART3_Write+0
;Practica2_MPU6050.c,287 :: 		UART3_Write(0x0A); //Line Feed LF
MOVS	R0, #10
BL	_UART3_Write+0
;Practica2_MPU6050.c,288 :: 		UART3_Write(0x0D); //Return Car CR
MOVS	R0, #13
BL	_UART3_Write+0
;Practica2_MPU6050.c,289 :: 		Delay_ms(10);   //Estaba en 50
MOVW	R7, #26665
MOVT	R7, #0
NOP
NOP
L_main14:
SUBS	R7, R7, #1
BNE	L_main14
NOP
NOP
;Practica2_MPU6050.c,290 :: 		}
IT	AL
BAL	L_main10
;Practica2_MPU6050.c,292 :: 		}
L_end_main:
L__main_end_loop:
B	L__main_end_loop
; end of _main

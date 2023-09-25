#line 1 "C:/Users/cesar/OneDrive - Instituto Politecnico Nacional/Documents/0_7mo/Sensores_A/Practica2_MPU6050/Practica2_MPU6050.c"
#line 93 "C:/Users/cesar/OneDrive - Instituto Politecnico Nacional/Documents/0_7mo/Sensores_A/Practica2_MPU6050/Practica2_MPU6050.c"
int GYRO_XOUT, GYRO_YOUT, GYRO_ZOUT;
int ACCEL_XOUT, ACCEL_YOUT, ACCEL_ZOUT;
int TEMP_OUT;


int info;
char buf[25];


char gyro_x_out[10];
char gyro_y_out[10];
char gyro_z_out[10];

char accel_x_out[25];
char accel_y_out[25];
char accel_z_out[25];

char temp_c_out[10];



int ACCEL_XOUT_H, ACCEL_XOUT_L, ACCEL_YOUT_H;

int ACCEL_YOUT_L, ACCEL_ZOUT_H, ACCEL_ZOUT_L;
#line 127 "C:/Users/cesar/OneDrive - Instituto Politecnico Nacional/Documents/0_7mo/Sensores_A/Practica2_MPU6050/Practica2_MPU6050.c"
void MPU6050_Write(unsigned char addr, int raddr, int rdata){

 buf[0] = raddr;

 buf[1] = rdata;

 I2C1_Start();

 I2C1_Write(addr,buf,2,END_MODE_STOP);

}



 int MPU6050_TEST(void){

 buf[0] =  0x75 ;

 I2C1_Start();

 I2C1_Write( 0x68 , buf, 1, END_MODE_RESTART);

 I2C1_Read( 0x68 , buf, 2, END_MODE_STOP);

 if(buf[0] == 0x68){

 return 1;

 }
 else{

 return 0;

 }

}



int MPU6050_Read(unsigned short addr, int raddr){

 buf[0] = raddr;

 I2C1_Start();

 I2C1_Write(addr, buf, 1, END_MODE_RESTART);

 I2C1_Read (addr, buf, 2, END_MODE_STOP);

 return buf[0];

}



void MPU6050_Init(void){






 MPU6050_Write( 0x68 ,  0x1A , 0x06);




 MPU6050_Write( 0x68 ,  0x1C , 0x00);



 MPU6050_Write( 0x68 ,  0x1B , 0x10);



 MPU6050_Write( 0x68 ,  0x6B , 0x00);

}



void main() {

 UART3_Init(19200);

 Delay_ms(100);

 I2C1_Init();

 Delay_ms(1000);

 UART3_Write_Text("Pre Init Okay");

 UART3_Write(13);

 MPU6050_Init();

 info = MPU6050_TEST();

 if (info == 1){

 UART3_Write_Text("MPU6050 OK");

 UART3_Write(0x0A);

 UART3_Write(0x0D);

 }

 else{

 UART3_Write_Text("MPU6050 Failed");

 UART3_Write(0x0A);

 UART3_Write(0x0D);

 }

 Delay_ms(1000);

 while(1){



 ACCEL_XOUT_H = MPU6050_Read( 0x68 ,  0x3B );

 ACCEL_XOUT_L = MPU6050_Read( 0x68 ,  0x3C );

 ACCEL_YOUT_H = MPU6050_Read( 0x68 ,  0x3D );

 ACCEL_YOUT_L = MPU6050_Read( 0x68 ,  0x3E );

 ACCEL_ZOUT_H = MPU6050_Read( 0x68 ,  0x3F );

 ACCEL_ZOUT_L = MPU6050_Read( 0x68 ,  0x40 );


 ACCEL_XOUT = ( ACCEL_XOUT_H<<8 | ACCEL_XOUT_L );
 ACCEL_YOUT = ( ACCEL_YOUT_H<<8 | ACCEL_YOUT_L );
 ACCEL_ZOUT = ( ACCEL_ZOUT_H<<8 | ACCEL_ZOUT_L );

 Delay_ms(100);


 UART3_Write_Text(",");
 IntToStr(ACCEL_XOUT,accel_x_out);
 UART3_Write_Text(accel_x_out);
 UART3_Write_Text(",");

 IntToStr(ACCEL_YOUT,accel_y_out);
 UART3_Write_Text(accel_y_out);
 UART3_Write_Text(",");

 IntToStr(ACCEL_ZOUT,accel_z_out);
 UART3_Write_Text(accel_z_out);

 UART3_Write(0x0A);
 UART3_Write(0x0D);

 UART3_Write(0x0A);
 UART3_Write(0x0D);
 Delay_ms(10);
 }

}

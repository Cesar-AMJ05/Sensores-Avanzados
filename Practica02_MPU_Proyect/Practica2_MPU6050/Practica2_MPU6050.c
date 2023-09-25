
#define MPU6050_AUX_VDDIO          0x01   // R/W
#define MPU6050_SMPLRT_DIV         0x19   // R/W
#define MPU6050_CONFIG             0x1A   // R/W
#define MPU6050_GYRO_CONFIG        0x1B   // R/W
#define MPU6050_ACCEL_CONFIG       0x1C   // R/W
#define MPU6050_FF_THR             0x1D   // R/W
#define MPU6050_FF_DUR             0x1E   // R/W
#define MPU6050_MOT_THR            0x1F   // R/W
#define MPU6050_MOT_DUR            0x20   // R/W
#define MPU6050_ZRMOT_THR          0x21   // R/W
#define MPU6050_ZRMOT_DUR          0x22   // R/W
#define MPU6050_FIFO_EN            0x23   // R/W
#define MPU6050_I2C_MST_CTRL       0x24   // R/W
#define MPU6050_I2C_SLV0_ADDR      0x25   // R/W
#define MPU6050_I2C_SLV0_REG       0x26   // R/W
#define MPU6050_I2C_SLV0_CTRL      0x27   // R/W
#define MPU6050_I2C_SLV1_ADDR      0x28   // R/W
#define MPU6050_I2C_SLV1_REG       0x29   // R/W
#define MPU6050_I2C_SLV1_CTRL      0x2A   // R/W
#define MPU6050_I2C_SLV2_ADDR      0x2B   // R/W
#define MPU6050_I2C_SLV2_REG       0x2C   // R/W
#define MPU6050_I2C_SLV2_CTRL      0x2D   // R/W
#define MPU6050_I2C_SLV3_ADDR      0x2E   // R/W
#define MPU6050_I2C_SLV3_REG       0x2F   // R/W
#define MPU6050_I2C_SLV3_CTRL      0x30   // R/W
#define MPU6050_I2C_SLV4_ADDR      0x31   // R/W
#define MPU6050_I2C_SLV4_REG       0x32   // R/W
#define MPU6050_I2C_SLV4_DO        0x33   // R/W
#define MPU6050_I2C_SLV4_CTRL      0x34   // R/W
#define MPU6050_I2C_SLV4_DI        0x35   // R
#define MPU6050_I2C_MST_STATUS     0x36   // R
#define MPU6050_INT_PIN_CFG        0x37   // R/W
#define MPU6050_INT_ENABLE         0x38   // R/W
#define MPU6050_INT_STATUS         0x3A   // R
#define MPU6050_ACCEL_XOUT_H       0x3B   // R
#define MPU6050_ACCEL_XOUT_L       0x3C   // R
#define MPU6050_ACCEL_YOUT_H       0x3D   // R
#define MPU6050_ACCEL_YOUT_L       0x3E   // R
#define MPU6050_ACCEL_ZOUT_H       0x3F   // R
#define MPU6050_ACCEL_ZOUT_L       0x40   // R
#define MPU6050_TEMP_OUT_H         0x41   // R
#define MPU6050_TEMP_OUT_L         0x42   // R
#define MPU6050_GYRO_XOUT_H        0x43   // R
#define MPU6050_GYRO_XOUT_L        0x44   // R
#define MPU6050_GYRO_YOUT_H        0x45   // R
#define MPU6050_GYRO_YOUT_L        0x46   // R
#define MPU6050_GYRO_ZOUT_H        0x47   // R
#define MPU6050_GYRO_ZOUT_L        0x48   // R
#define MPU6050_EXT_SENS_DATA_00   0x49   // R
#define MPU6050_EXT_SENS_DATA_01   0x4A   // R
#define MPU6050_EXT_SENS_DATA_02   0x4B   // R
#define MPU6050_EXT_SENS_DATA_03   0x4C   // R
#define MPU6050_EXT_SENS_DATA_04   0x4D   // R
#define MPU6050_EXT_SENS_DATA_05   0x4E   // R
#define MPU6050_EXT_SENS_DATA_06   0x4F   // R
#define MPU6050_EXT_SENS_DATA_07   0x50   // R
#define MPU6050_EXT_SENS_DATA_08   0x51   // R
#define MPU6050_EXT_SENS_DATA_09   0x52   // R
#define MPU6050_EXT_SENS_DATA_10   0x53   // R
#define MPU6050_EXT_SENS_DATA_11   0x54   // R
#define MPU6050_EXT_SENS_DATA_12   0x55   // R
#define MPU6050_EXT_SENS_DATA_13   0x56   // R
#define MPU6050_EXT_SENS_DATA_14   0x57   // R
#define MPU6050_EXT_SENS_DATA_15   0x58   // R
#define MPU6050_EXT_SENS_DATA_16   0x59   // R
#define MPU6050_EXT_SENS_DATA_17   0x5A   // R
#define MPU6050_EXT_SENS_DATA_18   0x5B   // R
#define MPU6050_EXT_SENS_DATA_19   0x5C   // R
#define MPU6050_EXT_SENS_DATA_20   0x5D   // R
#define MPU6050_EXT_SENS_DATA_21   0x5E   // R
#define MPU6050_EXT_SENS_DATA_22   0x5F   // R
#define MPU6050_EXT_SENS_DATA_23   0x60   // R
#define MPU6050_MOT_DETECT_STATUS  0x61   // R
#define MPU6050_I2C_SLV0_DO        0x63   // R/W
#define MPU6050_I2C_SLV1_DO        0x64   // R/W
#define MPU6050_I2C_SLV2_DO        0x65   // R/W
#define MPU6050_I2C_SLV3_DO        0x66   // R/W
#define MPU6050_I2C_MST_DELAY_CTRL 0x67   // R/W
#define MPU6050_SIGNAL_PATH_RESET  0x68   // R/W
#define MPU6050_MOT_DETECT_CTRL    0x69   // R/W
#define MPU6050_USER_CTRL          0x6A   // R/W
#define MPU6050_PWR_MGMT_1         0x6B   // R/W
#define MPU6050_PWR_MGMT_2         0x6C   // R/W
#define MPU6050_FIFO_COUNTH        0x72   // R/W
#define MPU6050_FIFO_COUNTL        0x73   // R/W
#define MPU6050_FIFO_R_W           0x74   // R/W
#define MPU6050_WHO_AM_I           0x75   // R
#define MPU6050_ADDRESS            0x68
#define PI 3.14159265359

 // Definición de variables para concatena
int   GYRO_XOUT, GYRO_YOUT, GYRO_ZOUT;
int   ACCEL_XOUT, ACCEL_YOUT, ACCEL_ZOUT;
int TEMP_OUT;

//Variables para subrutinas
int info;  //variable para verificaión de who i am
char buf[25];

//variables para impresión de datos
char gyro_x_out[10];
char gyro_y_out[10];
char gyro_z_out[10];

char accel_x_out[25];
char accel_y_out[25];
char accel_z_out[25];

char temp_c_out[10];

//variables para la parte alta y la parte baja

int  ACCEL_XOUT_H, ACCEL_XOUT_L, ACCEL_YOUT_H;

int ACCEL_YOUT_L, ACCEL_ZOUT_H, ACCEL_ZOUT_L;

/*int  GYRO_XOUT_H, GYRO_XOUT_L, GYRO_YOUT_H;

int  GYRO_YOUT_L, GYRO_ZOUT_H, GYRO_ZOUT_L;

int TEMP_H, TEMP_L;*/


// subrutina de escritura

void MPU6050_Write(unsigned char addr, int raddr, int rdata){

  buf[0] = raddr;                          // register address

  buf[1] = rdata;                          // register data

  I2C1_Start();                            // issue I2C start signal

  I2C1_Write(addr,buf,2,END_MODE_STOP);    // write data via I2C bus

}

//subrutina de prueba para verificar la comunicación con el sensor

 int MPU6050_TEST(void){

    buf[0] =  MPU6050_WHO_AM_I;          //Reconoce el sensor 7bits H

    I2C1_Start();

    I2C1_Write(MPU6050_ADDRESS, buf, 1, END_MODE_RESTART);

    I2C1_Read(MPU6050_ADDRESS, buf, 2, END_MODE_STOP);

    if(buf[0] == 0x68){

        return 1;

    }
    else{

        return 0;

    }

}

// subrutina de lectura

int MPU6050_Read(unsigned short addr, int raddr){

    buf[0] = raddr;

    I2C1_Start();

    I2C1_Write(addr,  buf, 1, END_MODE_RESTART);

    I2C1_Read (addr,  buf, 2, END_MODE_STOP);

    return buf[0];

}

//inicialización del sensor

void MPU6050_Init(void){

//(DEVICE_RESET=0, SLEEP=0,

// CYCLE=0, TEMP_DIS=0, CLK_SEL=0 [Internal 8MHz oscillator] )


   MPU6050_Write(MPU6050_ADDRESS, MPU6050_CONFIG, 0x06);  //Anterior 0x03


   //(XA_ST=0, YA_ST=0, ZA_ST=0, FS_SEL=2 [8g] )

   MPU6050_Write(MPU6050_ADDRESS, MPU6050_ACCEL_CONFIG, 0x00);

   //(XG_ST=0, YG_ST=0, ZG_ST=0, FS_SEL=2 [1000Â°/s] )

   MPU6050_Write(MPU6050_ADDRESS, MPU6050_GYRO_CONFIG, 0x10);

   //(EXT_SYNC_SET=0, DLPF_CFG=3)

   MPU6050_Write(MPU6050_ADDRESS, MPU6050_PWR_MGMT_1, 0x00);

}

// Main

void main() {

    UART3_Init(19200);      //Baud Rate 19200

    Delay_ms(100);

    I2C1_Init();          //I2C 1 puerto B

    Delay_ms(1000);

    UART3_Write_Text("Pre Init Okay"); //Conexion Correcta

    UART3_Write(13);                  //Retorno de carro (salto de linea nivel prom)

    MPU6050_Init();

    info = MPU6050_TEST();

    if (info == 1){

        UART3_Write_Text("MPU6050 OK");

        UART3_Write(0x0A); //Line Feed LF

        UART3_Write(0x0D); //Return Car CR

    }

     else{

        UART3_Write_Text("MPU6050 Failed");

        UART3_Write(0x0A); //Line Feed LF

        UART3_Write(0x0D); //Return Car CR

     }

      Delay_ms(1000);

    while(1){

 // Lectura de los valores del acelerómetro

    ACCEL_XOUT_H = MPU6050_Read(MPU6050_ADDRESS, MPU6050_ACCEL_XOUT_H);

    ACCEL_XOUT_L = MPU6050_Read(MPU6050_ADDRESS, MPU6050_ACCEL_XOUT_L);

    ACCEL_YOUT_H = MPU6050_Read(MPU6050_ADDRESS, MPU6050_ACCEL_YOUT_H);

    ACCEL_YOUT_L = MPU6050_Read(MPU6050_ADDRESS, MPU6050_ACCEL_YOUT_L);

    ACCEL_ZOUT_H = MPU6050_Read(MPU6050_ADDRESS, MPU6050_ACCEL_ZOUT_H);

    ACCEL_ZOUT_L = MPU6050_Read(MPU6050_ADDRESS, MPU6050_ACCEL_ZOUT_L);
// concatena los valores del acelerómetro

    ACCEL_XOUT = ( ACCEL_XOUT_H<<8 | ACCEL_XOUT_L );
    ACCEL_YOUT = ( ACCEL_YOUT_H<<8 | ACCEL_YOUT_L );
    ACCEL_ZOUT = ( ACCEL_ZOUT_H<<8 | ACCEL_ZOUT_L );

   Delay_ms(100);  //estaba en 100
    
 //imprime los valores del acelerometro
        UART3_Write_Text(",");
       IntToStr(ACCEL_XOUT,accel_x_out);
       UART3_Write_Text(accel_x_out);
       UART3_Write_Text(",");

       IntToStr(ACCEL_YOUT,accel_y_out);
       UART3_Write_Text(accel_y_out);
       UART3_Write_Text(",");

       IntToStr(ACCEL_ZOUT,accel_z_out);
       UART3_Write_Text(accel_z_out);

       UART3_Write(0x0A); //Line Feed LF
       UART3_Write(0x0D); //Return Car CR

       UART3_Write(0x0A); //Line Feed LF
       UART3_Write(0x0D); //Return Car CR
       Delay_ms(10);   //Estaba en 50
   }

}
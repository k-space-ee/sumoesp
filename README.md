# SumoESP

SumoESP is a [ESP32](https://espressif.com/en/products/hardware/esp32/overview)
based sumorobot similar to [SumoCHIP](https://github.com/eik-robo/sumochip).

Why yet another sumorobot design?

* SumoCHIP has it's issues listed under [known issues](https://github.com/eik-robo/sumochip#known-issues) section
* ESP32 has wireless interface and supports WebSockets which means we can keep same level of functionality
* ESP32 has hardware ADC-s which can be used with traditional IR distance
  sensors such as Sharp [Sharp GP2Y0A21YK0F](https://www.pololu.com/product/136)
* ESP32 has hardware PWM-s which means no more jerky behaviour with cheap servos
* ESP32 has just enough juice to run Micropython, so we don't have to rewrite everything

## Getting Micropython running

Fetch Xtensa toolchain, Espressif IoT Development Framework and Micropython fork:

```bash
wget https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-61-gab8375a-5.2.0.tar.gz
tar xvf xtensa-esp32-elf-linux64-1.22.0-61-gab8375a-5.2.0.tar.gz

git clone https://github.com/espressif/esp-idf
cd esp-idf
git submodule update --init
git checkout f73c6f875cc564fa6c9962be71eac4dbdc56aa63
cd ..

git clone https://github.com/vandys/micropython-esp32/
cd micropython-esp32
git checkout e94cde8a735926ace3f6efe79cbc2b9ee83a9ee3
git submodule update --init
make -C mpy-cross
cd esp32
ESPIDF=../../esp-idf/ PATH=../../xtensa-esp32-elf/bin/:$PATH make deploy
```

Open up serial via USB cable:

```python
import machine
motor_left = machine.PWM(machine.Pin(34), 50)
motor_right = machine.PWM(machine.Pin(13), 50)
motor_left.duty(40)
motor_left.duty(77)
motor_left.duty(135)
```

## Bill of materials

Preliminary bill of materials:

- ESP32 4USD
- LiPo cell 3 USD
- Wheels 3 USD each
- Servos 6 USD each
- Ultrasonic distance sensor 1.3 USD or Sharp infrared sensors
- LiPo charger and protection module 1.5 USD
- LITEON LTH-209-01 sensors for line following 0.30 EUR each

Total less than 30USD, excluding either 3D printed case or DIY metal frame.

from utime import sleep_us
from machine import Pin, PWM, ADC, time_pulse_us

WIFIS = dict({
"": ""})

# directions
STOP = 0
LEFT = 1
RIGHT = 2
FORWARD = 3
BACKWARD = 4

# Battery resistor ladder ratio
BATTERY_COEFF = 2.25

# Ultrasonic sensor calibration
ULTRASONIC_OFFSET = 800

# Servo timing
MOTOR_LEFT_TUNING = 33
MOTOR_RIGHT_TUNING = 33

# Motor PWM-s
pwm_left = PWM(Pin(16), freq=50, duty=0)
pwm_right = PWM(Pin(17), freq=50, duty=0)

# Sharp distance sensors
adc_enemy_left = ADC(Pin(36))
adc_enemy_right = ADC(Pin(37))

# Optek sensors
adc_line_left = ADC(Pin(32))
adc_line_middle = ADC(Pin(35))
adc_line_right = ADC(Pin(34))

# Ultrasonic distance sensor
trigger = Pin(25, Pin.OUT)
echo = Pin(26, Pin.IN)

# Battery gauge
adc_battery = ADC(Pin(33))

from time import sleep

# LED sweep
led_red = Pin(27, Pin.OUT, value=0)
sleep(0.2)
led_orange = Pin(14, Pin.OUT, value=0)
sleep(0.2)
led_green = Pin(12, Pin.OUT, value=0)
sleep(0.2)
led_blue = Pin(13, Pin.OUT, value=0)
sleep(0.2)
led_white = Pin(15, Pin.OUT, value=0)
sleep(0.2)
led_red.value(1)
sleep(0.2)
led_orange.value(1)
sleep(0.2)
led_green.value(1)
sleep(0.2)
led_blue.value(1)
sleep(0.2)
led_white.value(1)
sleep(0.2)

# Set reference voltage to 3.3V
adc_enemy_left.atten(ADC.ATTN_11DB)
adc_enemy_right.atten(ADC.ATTN_11DB)
adc_line_left.atten(ADC.ATTN_11DB)
adc_line_middle.atten(ADC.ATTN_11DB)
adc_line_right.atten(ADC.ATTN_11DB)
adc_battery.atten(ADC.ATTN_11DB)

# Calibrate line sensors
LINE_LEFT_THRESHOLD = adc_line_left.read()
LINE_MIDDLE_THRESHOLD = adc_line_middle.read()
LINE_RIGHT_THRESHOLD = adc_line_right.read()

def battery_voltage():
    return round(BATTERY_COEFF * (adc_battery.read() * 3.3 / 4096), 2)

enemy_score = 0
def enemy_distance():
    global enemy_score

    # send ping
    trigger.value(0)
    sleep_us(5)
    trigger.value(1)
    sleep_us(10)
    trigger.value(0)
    # wait for the pulse and calculate the distance
    enemy_distance = (time_pulse_us(echo, 1, 30000) / 2) / 29.1

    if enemy_distance < 60 and enemy_distance > 0:
        if enemy_score < 5:
            enemy_score += 1
    else:
        if enemy_score > 0:
            enemy_score -= 1

    # indicate enemy LED
    enemy_led.duty(255 if enemy_score > 2 else 0)

    return True if enemy_score > 2 else False

def line_left():
    return abs(adc_line_left.read() - LINE_LEFT_THRESHOLD) > 1000

def line_right():
    return abs(adc_line_right.read() - LINE_RIGHT_THRESHOLD) > 1000

def detach_servos():
    motor_left(0)
    motor_right(0)

prev_left_speed = 0
def motor_left(speed):
    global prev_left_speed
    if speed == prev_left_speed:
        return
    prev_left_speed = speed
    assert speed >= -100
    assert speed <= 100
    pwm_left.duty(int(33 + MOTOR_LEFT_TUNING + speed * 33 / 100)) # -100 ... 100 to 33 .. 102
    if speed == 0:
        pwm_left.duty(0)

prev_right_speed = 0
def motor_right(speed):
    global prev_right_speed
    if speed == prev_right_speed:
        return
    prev_left_speed = speed
    assert speed >= -100
    assert speed <= 100
    pwm_right.duty(int(33 + MOTOR_RIGHT_TUNING + speed * 33 / 100)) # -100 ... 100 to 33 .. 102
    if speed == 0:
        pwm_right.duty(0)

print("Battery voltage: %.2fV" % battery_voltage())
print("Line sensor thresholds:", LINE_LEFT_THRESHOLD, LINE_MIDDLE_THRESHOLD, LINE_RIGHT_THRESHOLD)

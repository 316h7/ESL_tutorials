from pygmyhdl import *


initialize()


@chunk  # simple pwm
def pwm_simple(clk_i, pwm_o, threshold):

    cnt = Bus(len(threshold), name='cnt')

    @seq_logic(clk_i.posedge)
    def cntr_logic():
        cnt.next = cnt + 1

    @comb_logic
    def output_logic():
        pwm_o.next = cnt < threshold


@chunk # less simple pwm
def pwm_less_simple(clk_i, pwm_o, threshold, duration):

    import math
    length = math.ceil(math.log(duration, 2))
    cnt = Bus(length, name='cnt')

    @seq_logic(clk_i.posedge)
    def cntr_logic():
        cnt.next = cnt + 1
        if cnt == duration - 1:
            cnt.next = 0

    @comb_logic
    def output_logic():
        pwm_o.next = cnt < threshold


@chunk # glitch-less pwm
def pwm_glitchless(clk_i, pwm_o, threshold, interval):
    import math
    length = math.ceil(math.log(interval, 2))
    cnt = Bus(length)

    threshold_r = Bus(length, name='threshold_r')

    @seq_logic(clk_i.posedge)
    def cntr_logic():
        cnt.next = cnt + 1
        if cnt == interval - 1:
            cnt.next = 0
            threshold_r.next = threshold

    @comb_logic
    def output_logic():
        pwm_o.next = cnt < threshold_r


@chunk  #ramp generator
def ramp(clk_i, ramp_o):

    delta = Bus(len(ramp_o))
    
    @seq_logic(clk_i.posedge)
    def logic():
        ramp_o.next = ramp_o + delta
        if ramp_o == 1:
            delta.next = 1
        elif ramp_o == ramp_o.max-2:
            delta.next = -1
        elif delta == 0:
            delta.next = 1
            ramp_o.next = 1


@chunk # LED wax-wane demo
def wax_wane(clk_i, led_o, length):
    rampout = Bus(length, name='ramp')
    ramp(clk_i, rampout)  
    pwm_simple(clk_i, led_o, rampout.o[length:length-4]) 



# generate HDL for LED wax-wane demo
clk = Wire(name='clk')
led = Wire(name='led')
wax_wane(clk, led, 6)  # generate HDL for LED wax-wane demo

# threshold = Bus(3, init_val=3)  # simple pwm
# pwm_simple(clk, pwm, threshold)

# threshold = Bus(4, name='threshold')  #  less simple or glitchless pwm 
# pwm_less_simple(clk, pwm, threshold, 10)
# pwm_glitchless(clk, pwm, threshold, 10)

# Simulation 
# clk_sim(clk, num_cycles=180)
# t = 110  
# show_waveforms(tick=True, start_time=t, stop_time=t+40)



toVerilog(wax_wane, clk, led, 23)
toVHDL(wax_wane, clk, led, 23)

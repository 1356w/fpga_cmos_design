gui_open_window Wave
gui_sg_create usb_dcm_group
gui_list_add_group -id Wave.1 {usb_dcm_group}
gui_sg_addsignal -group usb_dcm_group {usb_dcm_tb.test_phase}
gui_set_radix -radix {ascii} -signals {usb_dcm_tb.test_phase}
gui_sg_addsignal -group usb_dcm_group {{Input_clocks}} -divider
gui_sg_addsignal -group usb_dcm_group {usb_dcm_tb.CLK_IN1}
gui_sg_addsignal -group usb_dcm_group {{Output_clocks}} -divider
gui_sg_addsignal -group usb_dcm_group {usb_dcm_tb.dut.clk}
gui_list_expand -id Wave.1 usb_dcm_tb.dut.clk
gui_sg_addsignal -group usb_dcm_group {{Counters}} -divider
gui_sg_addsignal -group usb_dcm_group {usb_dcm_tb.COUNT}
gui_sg_addsignal -group usb_dcm_group {usb_dcm_tb.dut.counter}
gui_list_expand -id Wave.1 usb_dcm_tb.dut.counter
gui_zoom -window Wave.1 -full

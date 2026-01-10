# SPDX-License-Identifier: Apache-2.0

# keep first
board_runner_args(stm32cubeprogrammer "--port=swd" "--reset-mode=sw")
board_runner_args(jlink "--device=STM32L051C8T6" "--speed=4000")
board_runner_args(openocd "--cmd-pre-init" "source [find interface/stlink.cfg]" "--cmd-pre-init" "source [find target/stm32l0.cfg]" "--cmd-pre-init" "reset_config none separate")
board_runner_args(openocd "--gdb-init" "set pagination off")

# keep first
include(${ZEPHYR_BASE}/boards/common/stm32cubeprogrammer.board.cmake)
include(${ZEPHYR_BASE}/boards/common/openocd-stm32.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)

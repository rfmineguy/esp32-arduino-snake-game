FQBN ?= esp32:esp32:esp32
PORT ?= COM3
SKETCH_DIR ?= sketch

.PHONY: prebuild build
prebuild:
	arduino-cli core update-index
	arduino-cli core install esp32:esp32
build:
	arduino-cli compile --fqbn $(FQBN) $(SKETCH_DIR)

upload:
	arduino-cli upload -p $(PORT) --fqbn $(FQBN) $(SKETCH_DIR)

monitor:
	arduino-cli monitor --port $(PORT)
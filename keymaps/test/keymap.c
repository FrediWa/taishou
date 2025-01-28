#include QMK_KEYBOARD_H

#define KCX_CMD MO(_CMD)

enum layer_number {
  _QWERTY = 0,
  _CMD,
};

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    [_QWERTY] = LAYOUT(KC_COPY, KCX_CMD)
    [_CMD] = LAYOUT(KC_LEFT, KC_TRNS),
};

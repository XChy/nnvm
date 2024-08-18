/*
 * Reference:
 * https://github.com/dtcxzyw/cmmc/blob/main/tests/csmith/csmith_header.h
 * Provide safe calculations for the random test cases generated my csmith.
 * All the ternary operators in original version were substituted with if-else
 * statements for the compatibility of SysY grammar.
 */

static uint32_t crc32_tab[256];
static uint32_t crc32_context = 0xFFFFFFFFUL;

static void crc32_gentab(void) {
  uint32_t crc;
  const uint32_t poly = 0xEDB88320;
  int i, j;

  for (i = 0; i < 256; i++) {
    crc = i;
    for (j = 8; j > 0; j--) {
      if (crc & 1) {
        crc = (crc >> 1) ^ poly;
      } else {
        crc >>= 1;
      }
    }
    crc32_tab[i] = crc;
  }
}

static float fabsf(float x) {
  if (x < 0) {
    return -x;
  }
  return x;
}

static void crc32_byte(uint8_t b) {
  crc32_context = ((crc32_context >> 8) & 0x00FFFFFF) ^
                  crc32_tab[(crc32_context ^ b) & 0xFF];
}

static void crc32_4bytes(uint64_t val) {
  crc32_byte((val >> 0) & 0xff);
  crc32_byte((val >> 8) & 0xff);
  crc32_byte((val >> 16) & 0xff);
  crc32_byte((val >> 24) & 0xff);
}

static void print_hash(uint64_t hash) {
  putch(32);
  putint(hash);
  putch(10);
}

static void transparent_crc(uint64_t val, int flag) {
  crc32_4bytes(val);
  if (flag) {
    print_hash(crc32_context ^ 0xFFFFFFFFUL);
  }
}

static void transparent_crc_bytes(int flag) {
  // int i;
  // for(i = 0; i < nbytes; i++) {
  //     crc32_byte(ptr[i]);
  // }
  if (flag) {
    print_hash(crc32_context ^ 0xFFFFFFFFUL);
  }
}

static void platform_main_begin(void) {}
static void platform_main_end(uint64_t x, int flag) {
  if (flag) {
    print_hash(x);
  }
}

static void putdim(int x) {
  putint(x);
  putch(10);
}

static void putdim2(int x, int y) {
  putint(x);
  putch(32);
  putint(y);
  putch(10);
}

static void putdim3(int x, int y, int z) {
  putint(x);
  putch(32);
  putint(y);
  putch(32);
  putint(z);
  putch(10);
}

/*****************************************************************************/

static int32_t safe_unary_minus_func_int32_t_s(int32_t si) {
  if ((si == (-2147483647 - 1))) {
    return ((si));
  }
  return -si;
}
static int32_t safe_add_func_int32_t_s_s(int32_t si1, int32_t si2) {
  if ((((si1 > 0) && (si2 > 0) && (si1 > ((2147483647) - si2))) ||
       ((si1 < 0) && (si2 < 0) && (si1 < ((-2147483647 - 1) - si2))))) {
    return ((si1));
  }
  return (si1 + si2);
}
static int32_t safe_sub_func_int32_t_s_s(int32_t si1, int32_t si2) {
  if ((((si1 ^ si2) & (((si1 ^ ((si1 ^ si2) & (~(2147483647)))) - si2) ^ si2)) <
       0)) {
    return ((si1));
  }
  return (si1 - si2);
}
static int32_t safe_mul_func_int32_t_s_s(int32_t si1, int32_t si2) {
  if ((((si1 > 0) && (si2 > 0) && (si1 > ((2147483647) / si2))) ||
       ((si1 > 0) && (si2 <= 0) && (si2 < ((-2147483647 - 1) / si1))) ||
       ((si1 <= 0) && (si2 > 0) && (si1 < ((-2147483647 - 1) / si2))) ||
       ((si1 <= 0) && (si2 <= 0) && (si1 != 0) &&
        (si2 < ((2147483647) / si1))))) {
    return ((si1));
  }
  return si1 * si2;
}
static int32_t safe_mod_func_int32_t_s_s(int32_t si1, int32_t si2) {
  if (((si2 == 0) || ((si1 == (-2147483647 - 1)) && (si2 == (-1))))) {
    return ((si1));
  }
  return (si1 % si2);
}
static int32_t safe_div_func_int32_t_s_s(int32_t si1, int32_t si2) {
  if (((si2 == 0) || ((si1 == (-2147483647 - 1)) && (si2 == (-1))))) {
    return ((si1));
  }
  return (si1 / si2);
}
static int32_t safe_lshift_func_int32_t_s_s(int32_t left, int right) {
  if (((left < 0) || ((right) < 0) || ((right) >= 32) ||
       (left > ((2147483647) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static int32_t safe_lshift_func_int32_t_s_u(int32_t left, uint32_t right) {
  if (((left < 0) || ((right) < 0) || ((right) >= 32) ||
       (left > ((2147483647) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static int32_t safe_rshift_func_int32_t_s_s(int32_t left, int right) {
  if (((left < 0) || ((right) < 0) || ((right) >= 32))) {
    return ((left));
  }
  return (left >> (right));
}
static int32_t safe_rshift_func_int32_t_s_u(int32_t left, uint32_t right) {
  if (((left < 0) || ((right) < 0) || ((right) >= 32))) {
    return ((left));
  }
  return (left >> (right));
}

static uint32_t safe_unary_minus_func_uint32_t_u(uint32_t si) {
  if ((si == (-2147483647 - 1))) {
    return ((si));
  }
  return -si;
}

static uint32_t safe_add_func_uint32_t_u_u(uint32_t si1, uint32_t si2) {
  if ((((si1 > 0) && (si2 > 0) && (si1 > ((2147483647) - si2))) ||
       ((si1 < 0) && (si2 < 0) && (si1 < ((-2147483647 - 1) - si2))))) {
    return ((si1));
  }
  return (si1 + si2);
}
static uint32_t safe_sub_func_uint32_t_u_u(uint32_t si1, uint32_t si2) {

  if ((((si1 ^ si2) & (((si1 ^ ((si1 ^ si2) & (~(2147483647)))) - si2) ^ si2)) <
       0)) {
    return ((si1));
  }
  return (si1 - si2);
}
static uint32_t safe_mul_func_uint32_t_u_u(uint32_t si1, uint32_t si2) {
  if ((((si1 > 0) && (si2 > 0) && (si1 > ((2147483647) / si2))) ||
       ((si1 > 0) && (si2 <= 0) && (si2 < ((-2147483647 - 1) / si1))) ||
       ((si1 <= 0) && (si2 > 0) && (si1 < ((-2147483647 - 1) / si2))) ||
       ((si1 <= 0) && (si2 <= 0) && (si1 != 0) &&
        (si2 < ((2147483647) / si1))))) {
    return ((si1));
  }
  return si1 * si2;
}
static uint32_t safe_mod_func_uint32_t_u_u(uint32_t si1, uint32_t si2) {
  if (((si2 == 0) || ((si1 == (-2147483647 - 1)) && (si2 == (-1))))) {
    return ((si1));
  }
  return (si1 % si2);
}

static uint32_t safe_div_func_uint32_t_u_u(uint32_t si1, uint32_t si2) {
  if (((si2 == 0) || ((si1 == (-2147483647 - 1)) && (si2 == (-1))))) {
    return ((si1));
  }
  return (si1 / si2);
}
static uint32_t safe_lshift_func_uint32_t_u_s(uint32_t left, int right) {
  if (((left < 0) || ((right) < 0) || ((right) >= 32) ||
       (left > ((2147483647) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static uint32_t safe_lshift_func_uint32_t_u_u(uint32_t left, uint32_t right) {
  if (((left < 0) || ((right) < 0) || ((right) >= 32) ||
       (left > ((2147483647) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static uint32_t safe_rshift_func_uint32_t_u_s(uint32_t left, int right) {
  if (((left < 0) || ((right) < 0) || ((right) >= 32))) {
    return ((left));
  }
  return (left >> (right));
}
static uint32_t safe_rshift_func_uint32_t_u_u(uint32_t left, uint32_t right) {
  if (((left < 0) || ((right) < 0) || ((right) >= 32))) {
    return ((left));
  }
  return (left >> (right));
}

static float safe_add_func_float_f_f(float sf1, float sf2) {
  if ((fabsf((0.5f * sf1) + (0.5f * sf2)) >
       (0.5f * 3.40282346638528859811704183484516925e+38F))) {
    return (sf1);
  }
  return (sf1 + sf2);
}
static float safe_sub_func_float_f_f(float sf1, float sf2) {
  if ((fabsf((0.5f * sf1) - (0.5f * sf2)) >
       (0.5f * 3.40282346638528859811704183484516925e+38F))) {
    return (sf1);
  }
  return (sf1 - sf2);
}
static float safe_mul_func_float_f_f(float sf1, float sf2) {
  if ((fabsf((0x1.0p-100f * sf1) * (0x1.0p-28f * sf2)) >
       (0x1.0p-100f *
        (0x1.0p-28f * 3.40282346638528859811704183484516925e+38F)))) {
    return (sf1);
  }
  return (sf1 * sf2);
}
static float safe_div_func_float_f_f(float sf1, float sf2) {
  if (((fabsf(sf2) < 1.0f) &&
       (((sf2 == 0.0f) ||
         (fabsf((0x1.0p-49f * sf1) / (0x1.0p100f * sf2))) >
             (0x1.0p-100f *
              (0x1.0p-49f * 3.40282346638528859811704183484516925e+38F)))))) {
    return (sf1);
  }
  return (sf1 / sf2);
}
static int32_t safe_convert_func_float_to_int32_t(float sf1) {
  if (((sf1 <= (-2147483647 - 1)) || (sf1 >= (2147483647)))) {
    return ((2147483647));
  }
  return ((sf1));
}


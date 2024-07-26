static uint32_t crc32_tab[256];
static uint32_t crc32_context = 0xFFFFFFFFUL;

static void crc32_gentab(void) {
  uint32_t crc;
  const uint32_t poly = 0xEDB88320UL;
  int i, j;

  for (i = 0; i < 256; i++) {
    crc = i;
    for (j = 8; j > 0; j--) {
      if (crc & 1) {
        crc = (crc >> 1) ^ poly;
      }
      else {
        crc >>= 1;
      }
    }
    crc32_tab[i] = crc;
  }
}

static void crc32_byte(uint8_t b) {
  crc32_context = ((crc32_context >> 8) & 0x00FFFFFF) ^ crc32_tab[(crc32_context ^ b) & 0xFF];
}

static void crc32_8bytes(uint64_t val) {
  crc32_byte((val >> 0) & 0xff);
  crc32_byte((val >> 8) & 0xff);
  crc32_byte((val >> 16) & 0xff);
  crc32_byte((val >> 24) & 0xff);
  crc32_byte((val >> 32) & 0xff);
  crc32_byte((val >> 40) & 0xff);
  crc32_byte((val >> 48) & 0xff);
  crc32_byte((val >> 56) & 0xff);
}

static void put_hex(uint64_t hash) {
  if (hash >= 16) {
    put_hex(hash / 16);
  }
  putch(lut[hash % 16]);
}

static void print_hash(uint64_t hash) {
  putch(32);
  put_hex(hash);
  putch(10);
}

static void transparent_crc(uint64_t val, int flag) {
  crc32_8bytes(val);
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

static int8_t safe_unary_minus_func_int8_t_s(int8_t si) {

  return -si;
}
static int8_t safe_add_func_int8_t_s_s(int8_t si1, int8_t si2) {

  return (si1 + si2);
}
static int8_t safe_sub_func_int8_t_s_s(int8_t si1, int8_t si2) {

  return (si1 - si2);
}
static int8_t safe_mul_func_int8_t_s_s(int8_t si1, int8_t si2) {

  return si1 * si2;
}
static int8_t safe_mod_func_int8_t_s_s(int8_t si1, int8_t si2) {
  if (((si2 == 0) || ((si1 == (-128)) && (si2 == (-1))))) {
    return ((si1));
  }
  return (si1 % si2);
}
static int8_t safe_div_func_int8_t_s_s(int8_t si1, int8_t si2) {
  if (((si2 == 0) || ((si1 == (-128)) && (si2 == (-1))))) {
    return ((si1));
  }
  return (si1 / si2);
}
static int8_t safe_lshift_func_int8_t_s_s(int8_t left, int right) {
  if (((left < 0) || ((right) < 0) || ((right) >= 32) || (left > ((127) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static int8_t safe_lshift_func_int8_t_s_u(int8_t left, uint32_t right) {
  if (((left < 0) || ((right) >= 32) || (left > ((127) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static int8_t safe_rshift_func_int8_t_s_s(int8_t left, int right) {
  if (((left < 0) || ((right) < 0) || ((right) >= 32))) {
    return ((left));
  }
  return (left >> (right));
}
static int8_t safe_rshift_func_int8_t_s_u(int8_t left, uint32_t right) {
  if (((left < 0) || ((right) >= 32))) {
    return ((left));
  }
  return (left >> (right));
}
static int16_t safe_unary_minus_func_int16_t_s(int16_t si) {

  return -si;
}
static int16_t safe_add_func_int16_t_s_s(int16_t si1, int16_t si2) {

  return (si1 + si2);
}
static int16_t safe_sub_func_int16_t_s_s(int16_t si1, int16_t si2) {

  return (si1 - si2);
}
static int16_t safe_mul_func_int16_t_s_s(int16_t si1, int16_t si2) {

  return si1 * si2;
}
static int16_t safe_mod_func_int16_t_s_s(int16_t si1, int16_t si2) {
  if (((si2 == 0) || ((si1 == (-32767 - 1)) && (si2 == (-1))))) {
    return ((si1));
  }
  return (si1 % si2);
}
static int16_t safe_div_func_int16_t_s_s(int16_t si1, int16_t si2) {
  if (((si2 == 0) || ((si1 == (-32767 - 1)) && (si2 == (-1))))) {
    return ((si1));
  }
  return (si1 / si2);
}
static int16_t safe_lshift_func_int16_t_s_s(int16_t left, int right) {
  if (((left < 0) || ((right) < 0) || ((right) >= 32) || (left > ((32767) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static int16_t safe_lshift_func_int16_t_s_u(int16_t left, uint32_t right) {
  if (((left < 0) || ((right) >= 32) || (left > ((32767) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static int16_t safe_rshift_func_int16_t_s_s(int16_t left, int right) {
  if (((left < 0) || ((right) < 0) || ((right) >= 32))) {
    return ((left));
  }
  return (left >> (right));
}
static int16_t safe_rshift_func_int16_t_s_u(int16_t left, uint32_t right) {
  if (((left < 0) || ((right) >= 32))) {
    return ((left));
  }
  return (left >> (right));
}
static int32_t safe_unary_minus_func_int32_t_s(int32_t si) {
  if ((si == (-2147483647 - 1))) {
    return ((si));
  }
  return -si;
}
static int32_t safe_add_func_int32_t_s_s(int32_t si1, int32_t si2) {
  if ((((si1 > 0) && (si2 > 0) && (si1 > ((2147483647) - si2))) || ((si1 < 0) && (si2 < 0) && (si1 < ((-2147483647 - 1) - si2))))) {
    return ((si1));
  }
  return (si1 + si2);
}
static int32_t safe_sub_func_int32_t_s_s(int32_t si1, int32_t si2) {
  if ((((si1 ^ si2) & (((si1 ^ ((si1 ^ si2) & (~(2147483647)))) - si2) ^ si2)) < 0)) {
    return ((si1));
  }
  return (si1 - si2);
}
static int32_t safe_mul_func_int32_t_s_s(int32_t si1, int32_t si2) {
  if ((((si1 > 0) && (si2 > 0) && (si1 > ((2147483647) / si2))) || ((si1 > 0) && (si2 <= 0) && (si2 < ((-2147483647 - 1) / si1))) || ((si1 <= 0) && (si2 > 0) && (si1 < ((-2147483647 - 1) / si2))) || ((si1 <= 0) && (si2 <= 0) && (si1 != 0) && (si2 < ((2147483647) / si1))))) {
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
  if (((left < 0) || ((right) < 0) || ((right) >= 32) || (left > ((2147483647) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static int32_t safe_lshift_func_int32_t_s_u(int32_t left, uint32_t right) {
  if (((left < 0) || ((right) >= 32) || (left > ((2147483647) >> (right))))) {
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
  if (((left < 0) || ((right) >= 32))) {
    return ((left));
  }
  return (left >> (right));
}
static int64_t safe_unary_minus_func_int64_t_s(int64_t si) {
  if ((si == (-9223372036854775807L - 1))) {
    return ((si));
  }
  return -si;
}
static int64_t safe_add_func_int64_t_s_s(int64_t si1, int64_t si2) {
  if ((((si1 > 0) && (si2 > 0) && (si1 > ((9223372036854775807L) - si2))) || ((si1 < 0) && (si2 < 0) && (si1 < ((-9223372036854775807L - 1) - si2))))) {
    return ((si1));
  }
  return (si1 + si2);
}
static int64_t safe_sub_func_int64_t_s_s(int64_t si1, int64_t si2) {
  if ((((si1 ^ si2) & (((si1 ^ ((si1 ^ si2) & (~(9223372036854775807L)))) - si2) ^ si2)) < 0)) {
    return ((si1));
  }
  return (si1 - si2);
}
static int64_t safe_mul_func_int64_t_s_s(int64_t si1, int64_t si2) {
  if ((((si1 > 0) && (si2 > 0) && (si1 > ((9223372036854775807L) / si2))) || ((si1 > 0) && (si2 <= 0) && (si2 < ((-9223372036854775807L - 1) / si1))) || ((si1 <= 0) && (si2 > 0) && (si1 < ((-9223372036854775807L - 1) / si2))) || ((si1 <= 0) && (si2 <= 0) && (si1 != 0) && (si2 < ((9223372036854775807L) / si1))))) {
    return ((si1));
  }
  return si1 * si2;
}
static int64_t safe_mod_func_int64_t_s_s(int64_t si1, int64_t si2) {
  if (((si2 == 0) || ((si1 == (-9223372036854775807L - 1)) && (si2 == (-1))))) {
    return ((si1));
  }
  return (si1 % si2);
}
static int64_t safe_div_func_int64_t_s_s(int64_t si1, int64_t si2) {
  if (((si2 == 0) || ((si1 == (-9223372036854775807L - 1)) && (si2 == (-1))))) {
    return ((si1));
  }
  return (si1 / si2);
}
static int64_t safe_lshift_func_int64_t_s_s(int64_t left, int right) {
  if (((left < 0) || ((right) < 0) || ((right) >= 32) || (left > ((9223372036854775807L) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static int64_t safe_lshift_func_int64_t_s_u(int64_t left, uint32_t right) {
  if (((left < 0) || ((right) >= 32) || (left > ((9223372036854775807L) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static int64_t safe_rshift_func_int64_t_s_s(int64_t left, int right) {
  if (((left < 0) || ((right) < 0) || ((right) >= 32))) {
    return ((left));
  }
  return (left >> (right));
}
static int64_t safe_rshift_func_int64_t_s_u(int64_t left, uint32_t right) {
  if (((left < 0) || ((right) >= 32))) {
    return ((left));
  }
  return (left >> (right));
}
static uint8_t safe_unary_minus_func_uint8_t_u(uint8_t ui) {

  return -ui;
}
static uint8_t safe_add_func_uint8_t_u_u(uint8_t ui1, uint8_t ui2) {

  return ui1 + ui2;
}
static uint8_t safe_sub_func_uint8_t_u_u(uint8_t ui1, uint8_t ui2) {

  return ui1 - ui2;
}
static uint8_t safe_mul_func_uint8_t_u_u(uint8_t ui1, uint8_t ui2) {

  return (ui1) * (ui2);
}
static uint8_t safe_mod_func_uint8_t_u_u(uint8_t ui1, uint8_t ui2) {
  if ((ui2 == 0)) {
    return ((ui1));
  }
  return (ui1 % ui2);
}
static uint8_t safe_div_func_uint8_t_u_u(uint8_t ui1, uint8_t ui2) {
  if ((ui2 == 0)) {
    return ((ui1));
  }
  return (ui1 / ui2);
}
static uint8_t safe_lshift_func_uint8_t_u_s(uint8_t left, int right) {
  if ((((right) < 0) || ((right) >= 32) || (left > ((255) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static uint8_t safe_lshift_func_uint8_t_u_u(uint8_t left, uint32_t right) {
  if ((((right) >= 32) || (left > ((255) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static uint8_t safe_rshift_func_uint8_t_u_s(uint8_t left, int right) {
  if ((((right) < 0) || ((right) >= 32))) {
    return ((left));
  }
  return (left >> (right));
}
static uint8_t safe_rshift_func_uint8_t_u_u(uint8_t left, uint32_t right) {
  if (((right) >= 32)) {
    return ((left));
  }
  return (left >> (right));
}
static uint16_t safe_unary_minus_func_uint16_t_u(uint16_t ui) {

  return -ui;
}
static uint16_t safe_add_func_uint16_t_u_u(uint16_t ui1, uint16_t ui2) {

  return ui1 + ui2;
}
static uint16_t safe_sub_func_uint16_t_u_u(uint16_t ui1, uint16_t ui2) {

  return ui1 - ui2;
}
static uint16_t safe_mul_func_uint16_t_u_u(uint16_t ui1, uint16_t ui2) {

  return (ui1) * (ui2);
}
static uint16_t safe_mod_func_uint16_t_u_u(uint16_t ui1, uint16_t ui2) {
  if ((ui2 == 0)) {
    return ((ui1));
  }
  return (ui1 % ui2);
}
static uint16_t safe_div_func_uint16_t_u_u(uint16_t ui1, uint16_t ui2) {
  if ((ui2 == 0)) {
    return ((ui1));
  }
  return (ui1 / ui2);
}
static uint16_t safe_lshift_func_uint16_t_u_s(uint16_t left, int right) {
  if ((((right) < 0) || ((right) >= 32) || (left > ((65535) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static uint16_t safe_lshift_func_uint16_t_u_u(uint16_t left, uint32_t right) {
  if ((((right) >= 32) || (left > ((65535) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static uint16_t safe_rshift_func_uint16_t_u_s(uint16_t left, int right) {
  if ((((right) < 0) || ((right) >= 32))) {
    return ((left));
  }
  return (left >> (right));
}
static uint16_t safe_rshift_func_uint16_t_u_u(uint16_t left, uint32_t right) {
  if (((right) >= 32)) {
    return ((left));
  }
  return (left >> (right));
}
static uint32_t safe_unary_minus_func_uint32_t_u(uint32_t ui) {

  return -ui;
}
static uint32_t safe_add_func_uint32_t_u_u(uint32_t ui1, uint32_t ui2) {

  return ui1 + ui2;
}
static uint32_t safe_sub_func_uint32_t_u_u(uint32_t ui1, uint32_t ui2) {

  return ui1 - ui2;
}
static uint32_t safe_mul_func_uint32_t_u_u(uint32_t ui1, uint32_t ui2) {

  return (ui1) * (ui2);
}
static uint32_t safe_mod_func_uint32_t_u_u(uint32_t ui1, uint32_t ui2) {
  if ((ui2 == 0)) {
    return ((ui1));
  }
  return (ui1 % ui2);
}
static uint32_t safe_div_func_uint32_t_u_u(uint32_t ui1, uint32_t ui2) {
  if ((ui2 == 0)) {
    return ((ui1));
  }
  return (ui1 / ui2);
}
static uint32_t safe_lshift_func_uint32_t_u_s(uint32_t left, int right) {
  if ((((right) < 0) || ((right) >= 32) || (left > ((4294967295U) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static uint32_t safe_lshift_func_uint32_t_u_u(uint32_t left, uint32_t right) {
  if ((((right) >= 32) || (left > ((4294967295U) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static uint32_t safe_rshift_func_uint32_t_u_s(uint32_t left, int right) {
  if ((((right) < 0) || ((right) >= 32))) {
    return ((left));
  }
  return (left >> (right));
}
static uint32_t safe_rshift_func_uint32_t_u_u(uint32_t left, uint32_t right) {
  if (((right) >= 32)) {
    return ((left));
  }
  return (left >> (right));
}
static uint64_t safe_unary_minus_func_uint64_t_u(uint64_t ui) {

  return -ui;
}
static uint64_t safe_add_func_uint64_t_u_u(uint64_t ui1, uint64_t ui2) {

  return ui1 + ui2;
}
static uint64_t safe_sub_func_uint64_t_u_u(uint64_t ui1, uint64_t ui2) {

  return ui1 - ui2;
}
static uint64_t safe_mul_func_uint64_t_u_u(uint64_t ui1, uint64_t ui2) {

  return (ui1) * (ui2);
}
static uint64_t safe_mod_func_uint64_t_u_u(uint64_t ui1, uint64_t ui2) {
  if ((ui2 == 0)) {
    return ((ui1));
  }
  return (ui1 % ui2);
}
static uint64_t safe_div_func_uint64_t_u_u(uint64_t ui1, uint64_t ui2) {
  if ((ui2 == 0)) {
    return ((ui1));
  }
  return (ui1 / ui2);
}
static uint64_t safe_lshift_func_uint64_t_u_s(uint64_t left, int right) {
  if ((((right) < 0) || ((right) >= 32) || (left > ((18446744073709551615UL) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static uint64_t safe_lshift_func_uint64_t_u_u(uint64_t left, uint32_t right) {
  if ((((right) >= 32) || (left > ((18446744073709551615UL) >> (right))))) {
    return ((left));
  }
  return (left << (right));
}
static uint64_t safe_rshift_func_uint64_t_u_s(uint64_t left, int right) {
  if ((((right) < 0) || ((right) >= 32))) {
    return ((left));
  }
  return (left >> (right));
}
static uint64_t safe_rshift_func_uint64_t_u_u(uint64_t left, uint32_t right) {
  if (((right) >= 32)) {
    return ((left));
  }
  return (left >> (right));
}
static float safe_add_func_float_f_f(float sf1, float sf2) {
  if ((fabsf((0.5f * sf1) + (0.5f * sf2)) > (0.5f * 3.40282346638528859811704183484516925e+38F))) {
    return (sf1);
  }
  return (sf1 + sf2);
}
static float safe_sub_func_float_f_f(float sf1, float sf2) {
  if ((fabsf((0.5f * sf1) - (0.5f * sf2)) > (0.5f * 3.40282346638528859811704183484516925e+38F))) {
    return (sf1);
  }
  return (sf1 - sf2);
}
static float safe_mul_func_float_f_f(float sf1, float sf2) {
  if ((fabsf((0x1.0p-100f * sf1) * (0x1.0p-28f * sf2)) > (0x1.0p-100f * (0x1.0p-28f * 3.40282346638528859811704183484516925e+38F)))) {
    return (sf1);
  }
  return (sf1 * sf2);
}
static float safe_div_func_float_f_f(float sf1, float sf2) {
  if (((fabsf(sf2) < 1.0f) && (((sf2 == 0.0f) || (fabsf((0x1.0p-49f * sf1) / (0x1.0p100f * sf2))) > (0x1.0p-100f * (0x1.0p-49f * 3.40282346638528859811704183484516925e+38F)))))) {
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

/*
static double safe_add_func_double_f_f(double sf1, double sf2) {
  if ((fabs((0.5 * sf1) + (0.5 * sf2)) > (0.5 * ((double)1.79769313486231570814527423731704357e+308)))) {
    return (sf1);
  }
  return (sf1 + sf2);
}
static double safe_sub_func_double_f_f(double sf1, double sf2) {
  if ((fabs((0.5 * sf1) - (0.5 * sf2)) > (0.5 * ((double)1.79769313486231570814527423731704357e+308)))) {
    return (sf1);
  }
  return (sf1 - sf2);
}
static double safe_mul_func_double_f_f(double sf1, double sf2) {
  if ((fabs((0x1.0p-100 * sf1) * (0x1.0p-924 * sf2)) > (0x1.0p-100 * (0x1.0p-924 * ((double)1.79769313486231570814527423731704357e+308))))) {
    return (sf1);
  }
  return (sf1 * sf2);
}
static double safe_div_func_double_f_f(double sf1, double sf2) {
  if (((fabs(sf2) < 1.0) && (((sf2 == 0.0) || (fabs((0x1.0p-974 * sf1) / (0x1.0p100 * sf2))) > (0x1.0p-100 * (0x1.0p-974 * ((double)1.79769313486231570814527423731704357e+308))))))) {
    return (sf1);
  }
  return (sf1 / sf2);
}
*/

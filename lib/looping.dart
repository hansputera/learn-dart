bool iniPrimaKah(int prima) {
  if (prima <= 1) {
    return false;
  } else if (prima == 2) {
    return true;
  } else {
    for (var i = 2; i < prima; i++) {
      if ((prima % i) == 0) {
        return false;
      }
    }

    return true;
  }
}

int faktorial(int angka) {
  int result = 1;
  for (; angka >= 1; angka--) {
    result *= angka;
  }

  return result;
}

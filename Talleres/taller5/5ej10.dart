void main(List<String> args) {
  double poblacionA = 3500000,
      poblacionB = 5000000,
      year = 1980,
      sumaPoblacionA = poblacionA,
      sumaPoblacionB = poblacionB;
  while (sumaPoblacionA < sumaPoblacionB) {
    year++;
    sumaPoblacionA = (sumaPoblacionA * 0.15) + sumaPoblacionA;
    sumaPoblacionB = (sumaPoblacionB * 0.07) + sumaPoblacionB;
  }
  print("Poblacion A fue mayor que el B en el año $year");
}

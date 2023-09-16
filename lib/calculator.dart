import 'dart:math';

class Calculator {
  final height;
  final weight;

  double bmi = 0;

  Calculator(this.weight, this.height);

  String calculateBMI() {
    bmi = weight / pow(height / 100.0, 2.0);

    return bmi.toStringAsFixed(2);
  }

  String getBMICategory() {
    String category;

    if (bmi < 18.5) {
      category = "Bajo peso: Te recomendamos consultar a un profesional de la salud para entender las posibles causas de tu bajo peso y crear un plan de alimentación adecuado.";
    } else if (bmi < 25) {
      category = "Peso normal: ¡Felicidades! Mantén una dieta equilibrada y un estilo de vida activo para mantener tu peso saludable.";
    } else if (bmi < 30) {
      category = "Sobrepeso: Considera reducir las porciones de comida y aumentar tu actividad física para perder peso de manera gradual y saludable.";
    } else {
      category = "Obesidad: Es importante buscar la orientación de un profesional de la salud para desarrollar un plan de pérdida de peso seguro y sostenible, que incluya cambios en la dieta y actividad física.";
    }
    return category;
  }
}
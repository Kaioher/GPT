REPORT z_calculadora.

* Parámetros de entrada
PARAMETERS:
  p_num1 TYPE p DECIMALS 2,        "Primer número
  p_num2 TYPE p DECIMALS 2,        "Segundo número
  p_op   TYPE c LENGTH 1.          "Operador: + - * /

DATA(result) TYPE p DECIMALS 2.

START-OF-SELECTION.

  CASE p_op.
    WHEN '+'.
      result = p_num1 + p_num2.
    WHEN '-'.
      result = p_num1 - p_num2.
    WHEN '*'.
      result = p_num1 * p_num2.
    WHEN '/'.
      IF p_num2 = 0.
        WRITE: / 'Error: no se puede dividir por cero'.
        STOP.
      ELSE.
        result = p_num1 / p_num2.
      ENDIF.
    WHEN OTHERS.
      WRITE: / 'Operación no soportada'.
      STOP.
  ENDCASE.

  WRITE: / 'Resultado:', result.

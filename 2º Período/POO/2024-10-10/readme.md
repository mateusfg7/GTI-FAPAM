# Sobrecarga de método

Podemos ter 2 métodos com o mesmo nome porém com parãmetros diferente, e o Java vai saber usar
o método certo baseado nos parâmetros passados.

```java
public class MethodOverloa {
    public double calculaDesconto(int valor) {
        return valor * 0.4;
    }
    
    public double calculaDesconto(double valor) {
        return valor * 0.4;
    }
}
```

# Array e ArrayList

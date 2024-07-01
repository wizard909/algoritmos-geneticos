## ALGORITMOS GENÉTICOS

* **Alumnos:** Facundo Cichero, Nehuen Caamaño, Benjamin
* **Profesor:** Pablo Pandolfo

Los algoritmos genéticos (AG) son métodos adaptativos basados en técnicas inspiradas en la evolución biológica y genética para resolver problemas de optimización. 
Se fundamentan en el principio darwiniano de la supervivencia de los organismos más aptos, donde las soluciones más eficientes tienen más probabilidades de sobrevivir y propagarse en la población de soluciones.
La idea de los algoritmos genéticos fue introducida por primera vez en la década de 1960 por John Holland, un pionero en el campo de la computación evolutiva. Holland, junto con sus estudiantes y colegas en la Universidad de Michigan, desarrolló formalmente este enfoque en su libro "Adaptation in Natural and Artificial Systems" publicado en 1975. Holland no solo propuso el uso de algoritmos genéticos para la optimización, sino que también estableció las bases teóricas para entender cómo estos algoritmos pueden simular el proceso de evolución natural para encontrar soluciones eficientes a problemas complejos.

### Estructura básica:
- **Cromosoma:** Representación de una posible solución al problema que se está intentando resolver.
- **Gen:** Unidad de información dentro de un cromosoma que representa uno de los valores de las variables de decisión.
  
![img cromosoma](https://github.com/wizard909/algoritmos-geneticos/blob/main/estructura%20basica.png)

Los elementos principales y funcionamiento:

1. **Población**: Es un conjunto de posibles soluciones al problema que se desea resolver. Estas soluciones se representan mediante estructuras de datos llamadas "individuos" o "cromosomas" 

2. **Función de evaluación**: Es la métrica que mide la calidad de cada individuo en términos de su aptitud para resolver el problema. Esta función determina qué individuos son más "aptos" y, por lo tanto, tienen más probabilidades de sobrevivir y reproducirse 

3. **Operadores genéticos**: Son métodos u operaciones aplicadas sobre una población para obtener nuevas poblaciones. Los principales operadores son:
   - **Selección**: Proceso en el cual se eligen los individuos más aptos de la población actual para reproducirse y generar una nueva generación, siguiendo una estrategia similar a la selección natural 
   - **Reproducción**: Consiste en la combinación de los cromosomas de dos individuos seleccionados para crear nuevos individuos, utilizando operadores genéticos como la recombinación y la mutación 
   - **Reemplazo**: Una vez generada la nueva generación, se reemplaza la población actual con la nueva generación de individuos, permitiendo que la población evolucione hacia una solución óptima 

4. **Criterio de parada**: Condición que determina cuándo se debe detener el algoritmo. Puede ser un número máximo de generaciones, una solución óptima encontrada o un límite de tiempo 

El funcionamiento general se puede resumir en los siguientes pasos:

1. **Inicialización**: Se genera una población inicial de individuos aleatorios .
2. **Evaluación**: Se calcula la aptitud de cada individuo utilizando la función de evaluación .
3. **Selección**: Se eligen los individuos más aptos para reproducirse .
4. **Reproducción**: Se aplican operadores genéticos (recombinación y mutación) para crear nuevos individuos .
5. **Reemplazo**: Se reemplaza la población actual con la nueva generación de individuos.
6. **Convergencia**: Se repiten los pasos 2-5 hasta que se alcance un criterio de parada

### Selección
La selección es el proceso mediante el cual se eligen los individuos más aptos para la reproducción. Los subtipos incluyen:
1. **Selección por torneo**: Un pequeño subconjunto de la población se selecciona aleatoriamente y el individuo más apto dentro de este subconjunto se elige para la reproducción.
2. **Selección por ruleta**: La probabilidad de seleccionar un individuo es proporcional a su aptitud relativa.
3. **Selección por ranking**: Los individuos se ordenan según su aptitud y se asignan probabilidades de selección basadas en su posición.
4. **Selección elitista**: Los mejores individuos son seleccionados directamente para la siguiente generación sin cambios.

### Reproducción
La reproducción incluye técnicas para generar nuevos individuos a partir de los seleccionados y puede incluir medidas de fitness. Los subtipos incluyen:
1. **Recombinación (Cruce)**: Proceso de mezclar la información genética de dos padres para crear uno o más hijos. Esto es un ejemplo de **reproducción sexual**.
   - **Cruce de un punto**: Se elige un punto de cruce en los cromosomas de los padres y se intercambian las porciones de los cromosomas.
   - **Cruce de dos puntos**: Se eligen dos puntos de cruce y se intercambian las secciones internas entre los puntos.
   - **Cruce uniforme**: Cada gen del hijo se toma aleatoriamente de uno de los dos padres.
2. **Mutación**: Introduce variaciones aleatorias en los individuos para mantener la diversidad genética.
   - **Mutación puntual**: Un gen en el cromosoma es alterado.
   - **Mutación por intercambio**: Dos genes en el cromosoma son intercambiados.
   - **Mutación por inversión**: Una subsección del cromosoma es invertida.
3. **Reproducción asexual (Operador de copia)**: Un solo individuo se clona para crear descendencia.

#### Fitness
La aptitud (fitness) es una medida de la calidad de los individuos y es crucial en la selección y reproducción:
1. **Fitness puro**: La aptitud directa sin ningún tipo de ajuste.
2. **Fitness ajustado**: La aptitud modificada para tener en cuenta ciertos factores, como la diversidad de la población.
3. **Fitness estandarizado**: La aptitud transformada para que se ajuste a una escala específica.
4. **Fitness normalizado**: La aptitud escalada para que los valores caigan dentro de un rango común, como entre 0 y 1.

### Reemplazo
El reemplazo se refiere a cómo se introduce la nueva generación en la población, sustituyendo a los individuos previos. Los subtipos incluyen:
1. **Reemplazo generacional**: Toda la población es reemplazada por la nueva generación.
2. **Reemplazo por torneos**: Parte de la población es reemplazada mediante torneos entre individuos viejos y nuevos.
3. **Reemplazo elitista**: Algunos de los mejores individuos de la generación anterior se mantienen en la nueva generación para asegurar la calidad de las soluciones.
4. **Reemplazo de padres**: Los individuos que fueron seleccionados como padres son reemplazados en la nueva generación.
5. **Reemplazo de individuos similares**: Los nuevos individuos reemplazan a los más similares genéticamente de la generación anterior para mantener la diversidad.
6. **Reemplazo de peores individuos**: Los individuos menos aptos de la generación anterior son reemplazados por los nuevos individuos.
7. **Reemplazo aleatorio**: Algunos individuos de la generación anterior son reemplazados aleatoriamente por nuevos individuos.

![algoritmo genetico](https://github.com/wizard909/algoritmos-geneticos/blob/main/algoritmo%20genetico.jpg)

### Soft Computing

Soft Computing incluye métodos computacionales flexibles y tolerantes a la incertidumbre.

### Algoritmos Genéticos (AG)

Utilizan principios de la evolución natural para encontrar soluciones óptimas.

### Relaciones y Métodos Relacionados

#### Técnicas Heurísticas (Problemas de Búsqueda y Optimización)

Métodos que buscan soluciones satisfactorias a problemas complejos de manera eficiente.

#### Redes Neuronales Artificiales

Simulan el comportamiento del cerebro humano para resolver problemas complejos, como el reconocimiento de patrones y aprendizaje automático.

#### Lógica Difusa

Permite el razonamiento con información imprecisa o incierta.

### Áreas en Inteligencia Artificial

- **Computación Evolutiva**: Incluye técnicas como los Algoritmos Genéticos y la programación evolutiva, basadas en la evolución natural.

- **Procesamiento de Lenguaje Natural (PLN)**: Utiliza métodos computacionales para la comprensión y generación de lenguaje humano.
  
- **Sistemas Multiagentes**: Estudia sistemas compuestos por múltiples agentes autónomos que interactúan entre sí para lograr objetivos comunes.

### Áreas de aplicación más destacadas

1. **Ingeniería**: Utilizados para la optimización de diseños y procesos industriales, como el diseño aerodinámico de vehículos, la generación de circuitos electrónicos, y la ingeniería de materiales .

2. **Logística y planificación de rutas**: Empleados en la asignación de recursos y la programación, contribuyendo a mejorar la eficiencia en la gestión de rutas y recursos .

3. **Aprendizaje automático**: Los AG se utilizan para optimizar los parámetros y la estructura de modelos de aprendizaje automático, como redes neuronales, mejorando su rendimiento en tareas específicas. Formas en que se aplican:
   
- **Optimización de Parámetros**: Los AG pueden ajustar los hiperparámetros de modelos de aprendizaje automático, como la tasa de aprendizaje, el número de capas y neuronas en una red    neuronal, para encontrar la configuración que maximiza el rendimiento del modelo .

- **Estructura de Modelos**: Además de los parámetros, los AG pueden diseñar la arquitectura óptima de una red neuronal, explorando diferentes configuraciones y seleccionando las más aptas basadas en su rendimiento .

4. **Economía y finanzas**: Aplicados en la optimización de carteras de inversión, el diseño de estrategias de trading, la predicción de precios y la modelización económica .

5. **Bioinformática y genómica**: Utilizados en el análisis de secuencias genéticas, la identificación de patrones en datos biológicos, la predicción de estructuras proteicas y la inferencia filogenética .

6. **Robótica y control**: Empleados en el diseño y optimización de controladores para robots, la planificación de movimientos, la navegación y la coordinación de múltiples agentes .

### Algoritmos Genéticos en el Diseño de Productos y Procesos Industriales

En el ámbito industrial, los AG se aplican en la optimización de diseños y procesos para mejorar la eficiencia y la calidad. Algunas aplicaciones específicas incluyen:

1. **Diseño Aerodinámico**: Los AG se utilizan para optimizar el diseño aerodinámico de vehículos, como automóviles y aviones, mejorando su eficiencia energética y rendimiento .

2. **Generación de Circuitos Electrónicos**: En la ingeniería electrónica, los AG ayudan a diseñar circuitos que cumplen con especificaciones técnicas precisas y optimizan el uso de materiales .

3. **Diseño de Fármacos**: Los AG se aplican en la industria farmacéutica para diseñar moléculas que tienen propiedades deseadas, acelerando el proceso de descubrimiento de nuevos medicamentos .

4. **Ingeniería de Materiales**: Los AG optimizan la composición y estructura de nuevos materiales para obtener propiedades específicas, como mayor resistencia o conductividad .

### Ventajas y Desventajas

**Ventajas**:
- **Exploración Eficiente del Espacio de Búsqueda**: Capacidad para explorar grandes espacios de soluciones y encontrar soluciones óptimas o subóptimas .
- **Adaptabilidad**: Pueden adaptarse a problemas complejos con múltiples variables y restricciones .
- **Tolerancia al Ruido**: Son robustos frente a datos ruidosos o inciertos .
- **Optimización Multiobjetivo**: Pueden manejar múltiples objetivos simultáneamente.

**Desventajas**:
- **Necesidad de Definir una Representación Adecuada**: Requieren una representación adecuada del problema para ser efectivos .
- **Posible Convergencia Prematura**: Pueden converger prematuramente hacia una solución subóptima .
- **Número Considerable de Evaluaciones**: Requieren muchas evaluaciones de la función objetivo, lo cual puede ser costoso computacionalmente .
- **Sensibilidad a Parámetros y Operadores**: Su rendimiento puede ser muy sensible a la elección de parámetros y operadores genéticos .
- **No Garantizan Solución Óptima**: No siempre garantizan encontrar la solución óptima en todos los casos.

**Herramientas Interactivas y Recursos**
  
**Simuladores en Línea:**
-GA Playground
-Genetic Algorithm Visualizer

**Tutoriales y Ejemplos Prácticos:**
-GeeksforGeeks
-Towards Data Science

**Librerías y Frameworks:**
-DEAP (Distributed Evolutionary Algorithms in Python)
-GA for TSP on GitHub

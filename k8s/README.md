# Tipos de Servicio en Kubernetes

1. **ClusterIP**
   - **Descripción**: Acceso interno, solo disponible dentro del clúster.
   - **Uso**: Ideal para comunicación interna entre pods.
   - **Por Defecto**: Sí (si no se especifica).

2. **NodePort**
   - **Descripción**: Exposición en un puerto específico en cada nodo.
   - **Uso**: Acceso externo utilizando la IP de cualquier nodo y el puerto asignado.

3. **LoadBalancer**
   - **Descripción**: Crea un balanceador de carga externo.
   - **Uso**: Acceso público a través de una dirección IP fija (requiere soporte de nube).

4. **ExternalName**
   - **Descripción**: Mapea el servicio a un nombre DNS externo.
   - **Uso**: Integración con servicios externos fuera del clúster.

usuario interactua con el ingress -> cluster -> servicio -> pod -> container

### Flujo de Interacción en Kubernetes

1. **Usuario**:
   - Realiza una solicitud a una URL específica.

2. **Ingress**:
   - Actúa como puerta de entrada al clúster.
   - Dirige la solicitud al servicio correspondiente según reglas definidas.

3. **Cluster**:
   - El clúster de Kubernetes gestiona todos los recursos y servicios.

4. **Servicio**:
   - Recibe la solicitud del **Ingress**.
   - Redirige el tráfico a uno o más pods.

5. **Pod**:
   - Procesa la solicitud.

6. **Contenedor**:
   - Ejecuta la lógica de negocio.
   - Envía la respuesta de vuelta al usuario.

## Uso de Ingress en Kubernetes con Spring Boot y Node.js

### Ventajas de Usar Ingress

1. **Enrutamiento Centralizado**:
   - Permite definir reglas de enrutamiento para dirigir el tráfico a diferentes servicios basados en la URL, facilitando la gestión de múltiples servicios desde un solo punto.

2. **Terminación SSL**:
   - Maneja certificados SSL en el nivel de Ingress, simplificando la configuración de comunicación segura antes de que llegue a las aplicaciones.

3. **Balanceo de Carga**:
   - Balancea la carga entre múltiples instancias de servicios, mejorando la disponibilidad y el rendimiento, incluso si tu aplicación (ya sea Spring Boot o Node.js) puede manejar múltiples instancias.

4. **Reescritura de URL y Anotaciones**:
   - Permite aplicar transformaciones a las solicitudes mediante anotaciones, lo que facilita la gestión de rutas sin tener que implementar lógica adicional en la aplicación.

5. **Seguridad y Autenticación**:
   - Implementa reglas de seguridad o autenticación en el nivel de Ingress, asegurando que las solicitudes sean validadas antes de llegar a las aplicaciones.

### Consideraciones

- Aunque aplicaciones como **Node.js** y **Spring Boot** pueden manejar sus propias solicitudes HTTP, el uso de Ingress proporciona beneficios adicionales en términos de escalabilidad, seguridad y gestión del tráfico.
- Para aplicaciones más complejas o que requieren acceso externo, el uso de un Ingress es altamente recomendado.

El uso de Ingress con NGINX (o cualquier otro controlador de Ingress) en Kubernetes, incluso si tu aplicación Spring Boot tiene un servidor embebido (como Tomcat o Jetty)
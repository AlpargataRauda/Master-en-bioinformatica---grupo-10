🎯 Proyecto de Bioinformática Colaborativa: Análisis de Dianas de microRNA

Este repositorio aloja el trabajo colaborativo del grupo 10 para la asignatura de Bioinformática, centrado en el control de versiones y la aplicación de análisis de dianas de microRNAs (miRNAs).

🚀 Propósito y Objetivos

Los microRNAs son pequeños RNAs no codificantes que regulan la expresión génica post-transcripcionalmente al unirse a mRNAs diana.

El propósito de este proyecto es:

1. Identificar las dianas génicas putativas (putative targets) de un conjunto de miRNAs previamente seleccionados.
2. Realizar un análisis de enriquecimiento funcional (e.g., vías de señalización) para entender los mecanismos biológicos afectados por esta regulación.
3. Demostrar el uso de Git y GitHub para el desarrollo colaborativo.

Objetivos de aprendizaje (GitHub):

  - Crear una estructura de repositorio lógica y replicable.
  - Realizar commits claros y descriptivos.
  - Gestionar ramas y Pull Requests para integrar el trabajo individual en el proyecto principal.

📂 Estructura del Repositorio (Criterio 2)

El proyecto está organizado de la siguiente manera:

  Carpeta    Descripción

  data/      Contiene los archivos de entrada (listas de miRNAs) y bases de datos locales utilizadas.
  scripts/   Contiene el código fuente (Python o R) utilizado para la predicción de dianas y el análisis estadístico.
  results/   Almacena los resultados generados: tablas de dianas, gráficos de enriquecimiento, y reportes finales.
  doc/       Documentación complementaria, protocolos o slides de presentación.

🛠️ Detalle de las Carpetas y el Contenido del Proyecto

A continuación, se detalla el uso y el tipo de contenido que se espera en cada directorio, siguiendo las mejores prácticas de organización de proyectos de bioinformática:

1. Directorio ->  data/

Este es el punto de partida de nuestro análisis. Contiene los datos necesarios para iniciar la predicción de dianas.

    1.1 Contenido:
    
       - miRNAs_de_interes.txt: Lista inicial de IDs de microRNA (ejemplo: hsa-miR-21-5p, hsa-miR-155-5p) extraídos de un estudio o base de datos.
       - external_db/: Subcarpeta opcional para incluir copias de bases de datos de anotación o secuencias de referencia que se utilicen en el script.

    1.2 Función en el Proyecto: Asegurar que los datos de entrada sean estáticos y estén versionados. Si cambiamos la lista de miRNAs, el cambio debe reflejarse en un commit claro.

2. Directorio scripts/

Aquí reside la lógica de nuestro proyecto, el código de bioinformática que realiza el trabajo.

  2.1 Contenido:
  
    - predict_targets.py (o .R): Script principal encargado de interactuar con herramientas externas (como TargetScan) o APIs para obtener las dianas génicas para la lista de miRNAs.
    - pathway_enrichment.R (o .py): Script secundario que toma las dianas predichas y realiza análisis de enriquecimiento de vías (KEGG, GO, etc.).

Documentación interna: El archivo scripts/README.md (ver la documentación interna de esa carpeta) explica las convenciones de nomenclatura y la función de cada archivo de código.

Función en el Proyecto: Garantizar la reproducibilidad. Al ejecutar estos scripts con los datos de /data, siempre se deberían obtener los mismos resultados.

3. Directorio results/

Este directorio almacena todos los productos finales generados por los scripts en /scripts.

Contenido:

targets_predichos.tsv: Tabla con las dianas génicas y sus puntuaciones de predicción.

pathways_enriquecidos.csv: Tabla con las vías de señalización que resultaron estadísticamente significativas.

graficos/: Subcarpeta que contiene visualizaciones clave, como diagramas de barras de vías o heatmaps de resultados.

Función en el Proyecto: Ser el punto de entrega y revisión de los datos analizados.

4. Directorio doc/

Reservado para material de soporte y documentación no relacionada con el código.

Contenido:

Guia_de_colaboracion.md: Documento que explica a los nuevos miembros del grupo cómo usar Git y GitHub en este proyecto (qué ramas usar, cómo hacer commits).

Presentacion_Final.pptx (o PDF): Archivos para la presentación de resultados al profesor (si aplica).

Función en el Proyecto: Mantener la claridad en la colaboración y archivar documentos importantes.

🛠️ Instrucciones de Uso (Simulación)

Clonar el repositorio:

git clone [https://aws.amazon.com/es/what-is/repo/](https://aws.amazon.com/es/what-is/repo/)


Crear una rama de trabajo (EJEMPLO DE COLABORACIÓN):

git checkout -b feature/analisis-inicial-targets


Ejecutar el script de análisis (Simulación):

# Suponiendo que el script se ejecuta así
python scripts/prediccion_targets.py --input data/miRNAs_de_interes.txt --output results/targets_predichos.tsv


Subir los resultados y crear un Pull Request:

Agregar los archivos de resultados a Git.

Realizar un commit descriptivo (ver Criterio 4).

Subir la rama y proponer la fusión vía Pull Request.

## Proyecto de Bioinformática: Análisis de Dianas de miRNAs y Rutas de Señalización
Este repositorio es el espacio de trabajo del __grupo 10__ para la simulación de un proyecto de bioinformática centrado en el análisis de dianas de microARNs (miRNAs) y la identificación de las rutas de señalización biológica que estas regulan. La idea es aplicar un flujo de trabajo real, desde el procesamiento de datos de expresión (RNA-Seq) hasta el análisis de enriquecimiento funcional (pathway analysis), utilizando las buenas prácticas de Git y GitHub para la colaboración.

## Propósito del Proyecto
  1. Procesar datos de RNA-Seq para identificar genes con expresión diferencial.
  2. Cruzar estos genes con bases de datos de dianas de miRNA (TargetScan, miRDB) para entender qué miRNAs están activos.
  3. Interpretar el impacto biológico de estos genes/miRNAs mediante el análisis de rutas de señalización (GO, KEGG).
  
## Contenido del Repositorio
Este repositorio integra dos componentes principales:
  1. __Pipeline de RNA-Seq:__ scripts y datos para procesar lecturas de secuenciación.
  2. __Librería de Referencia de miRNAs:__ colección de genes diana asociados a microARNs, obtenidos a partir de las bases de datos [TargetScan](https://www.targetscan.org/) y [miRDB](https://mirdb.org/), ambas reconocidas por su fiabilidad en la predicción de interacciones miRNA–gen. Estos datos se han procesado mediante un diagrama de Venn para identificar genes diana comunes y aumentar la precisión, sirviendo como base para la interpretación biológica de nuestros resultados de secuenciación.
  3. __Análisis Funcional:__ scripts y librerías de referencia (TargetScan, miRDB, Gene Ontology) para interpretar biológicamente los resultados de expresión.

## Estrucutra del Repositorio
* [Data](./Data/): aquí se encuentra [rawData](./Data/rawData/) que contiene las lecturas de secuenciación crudas (_.fastq.gz_) y metadatos (en formato _.xlsx_) asi como [processedData](./Data/processedData/) que contiene las lecturas intermedias y las tablas de datos procesado (_.txt_) y gráficos de control (_.png_).
* [Scripts](./Scripts/): contiene el código ejecutable simulado para cada etapa del pipeline., incluyendo _qc_pipeline.sh_ (control de calidad),  _align_reads.py_ (script de alineamiento) y _pathway_analysis.R_ (script de Análisis Funcional y Rutas).
* [Results](./Results/):contiene todas las salidas generadas por los scripts [graphics](./Results/graphics/), [analyses](./Results/analyses/), [summary](./Results/summary/) asi como archivos clave _qc_reports_, _aligned_ y _diff_expression_files_.
* [Docs](./Docs/): documentación (protocolos y guías de instalación), _protocolo_de_Alineamiento.md_ y _Guia_de_Dependencias.md_.

## Pipeline de Análisis
El proyecto está organizado según las etapas de un análisis genómico, y cada etapa usa herramientas específicas (simuladas en nuestros scripts):

* __Control de Calidad (QC):__ utilizamos la herramienta FastQC (simulada) para generar los reportes de calidad tanto antes como después del filtrado.
* __Pre-procesamiento:__ esta etapa incluye el Trimming de adaptadores para obtener archivos FASTQ limpios, listos para alinear.
* __Alineamiento:__ empleamos herramientas como STAR o HISAT2 (simuladas) para mapear las lecturas contra un genoma de referencia, generando archivos BAM alineados.
* __Análisis de Expresión Diferencial:__ la tabla de conteos es procesada para identificar los genes regulados que serán la base para la posterior validación de dianas de miRNA.
* __Análisis Funcional y de Rutas:__ se cruzan los genes diferencialmente expresados con las bases de datos de dianas de miRNA y ejecutamos un para identificar qué "rutas de señalización" (ej. "MAPK signaling pathway") están significativamente alteradas en nuestro experimento.

## COLABORADORES DEL REPOSITORIO
* Jose Maria Sevilla Avendaño 
* Jose Antonio Celada Guerrero 
* Judit Del Valle Molina 
* Jesús Javier Amat Pamies 
* Fatima Goiri Presmanes

## Licencia del Proyecto
Este proyecto está distribuido bajo la MIT License.

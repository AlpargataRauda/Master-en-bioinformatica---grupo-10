## Proyecto de Bioinformática: Análisis de Expresión Génica (RNA-Seq)
Este repositorio es el espacio de trabajo del grupo 10 para la simulación de un análisis de secuenciación de ARN (RNA-Seq). La idea es aplicar un flujo de trabajo real, utilizando las buenas prácticas de Git y GitHub para la colaboración.

## Propósito del Proyecto
El objetivo es procesar las secuencias de ARN para asegurar la trazabilidad completa de los cambios mediante el control de versiones, y utilizar los datos de expresión obtenidos para validar dianas de microARNs.

## Contenido del Repositorio
Este repositorio integra dos componentes principales:
  1. Pipeline de RNA-Seq: Scripts y datos para procesar lecturas de secuenciación.
  2. Librería de Referencia de miRNAs: Una colección de genes diana asociados a microARNs, obtenidos a partir de las bases de datos [TargetScan](https://www.targetscan.org/) y [miRDB](https://mirdb.org/), ambas reconocidas por su fiabilidad en la predicción de interacciones miRNA–gen. Estos datos se han procesado mediante un diagrama de Venn para identificar genes diana comunes y aumentar la precisión, sirviendo como base para la interpretación biológica de nuestros resultados de secuenciación.

## Estrucutra del Respositorio
* [Data](./Data/): aquí podrás encontra los [rawData](./Data/rawData/) que contienen las lecturas de secuenciación crudas (.fastq.gz) y metadatos iniciales de las muestras (en formato .xlsx) asi como los [processedData](./Data/processedData/) contiene las lecturas limpias intermedias,tablas de datos procesado.(.txt) y gráficos de control (.png).
* [Scripts](./Scripts/):: contiene el código ejecutable para cada etapa del pipeline., incluyendo qc_pipeline.sh (control de Calidad) y align_reads.py (script de alineamiento).
* [Results](./Results/):contiene todas las salidas generadas por los scripts [graphics](./Results/graphics/), [analyses](./Results/analyses/), [summary](./Results/summary/) asi como archivos clave qc_reports, aligned y vcf_Files.
* [Docs](./Docs/): documentación, protocolos y guías de instalación. Contiene protocolo_de_Alineamiento.md y Guia_de_Dependencias.md.

## Pipeline de Análisis
El proyecto está organizado según las etapas de un análisis genómico, y cada etapa usa herramientas específicas (simuladas en nuestros scripts):

* __Control de Calidad (QC):__ utilizamos la herramienta FastQC (simulada) para generar los reportes de calidad tanto antes como después del filtrado.
* __Pre-procesamiento:__ esta etapa incluye el Trimming de adaptadores para obtener archivos FASTQ limpios, listos para alinear.
* __Alineamiento:__ empleamos herramientas como STAR o HISAT2 (simuladas) para mapear las lecturas contra un genoma de referencia, generando archivos BAM alineados.
* __Análisis de Expresión Diferencial:__ la tabla de conteos es procesada para identificar los genes regulados que serán la base para la posterior validación de dianas de miRNA.

## COLABORADORES DEL REPOSITORIO
* Jose Maria Sevilla Avendaño 
* Jose Antonio Celada Guerrero 
* Judit Del Valle Molina 
* Jesús Javier Amat Pamies 
* Fatima Goiri Presmanes

## Licencia del Proyecto
Este proyecto está distribuido bajo la MIT License.

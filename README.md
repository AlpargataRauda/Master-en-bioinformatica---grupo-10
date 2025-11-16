## Proyecto de Bioinformática: Análisis de Secuencias de ADN
Este repositorio es el espacio de trabajo del __grupo 10__ para el análisis de datos de secuenciación de ADN (DNA-Seq). La idea es simular un flujo de trabajo real, desde la limpieza de datos hasta la anotación de variantes, usando las buenas prácticas de Git y GitHub.

## Contenido del Repositorio
Este repositorio contiene una librería de microARNs (miRNAs) junto con sus genes diana asociados.
Los resultados han sido obtenidos a partir de las bases de datos [TargetScan](https://www.targetscan.org/) y [miRDB](https://mirdb.org/), ambas reconocidas por su fiabilidad en la predicción de interacciones miRNA–gen.

Los datos se han procesado y comparado mediante un diagrama de Venn, con el objetivo de identificar los genes diana comunes entre ambas plataformas y aumentar la precisión de las predicciones.
Esta librería sirve como punto de partida para análisis funcionales, validación experimental o modelado de redes de regulación génica basadas en miRNAs.

## ESTRUCTURA DEL RESPOSITORIO
* [Data](./Data/): aquí podrás encontrar los datos de secuenciación, tanto los [rawData](./Data/rawData/) metadatos iniciales en formato.xlsx como los [processedData](./Data/processedData/) lecturas limpias intermedias y las tablas de datos procesados (.txt y gráficos .png.
* [Scripts](./Scripts/): contiene todos los scripts (Bash, Python, R) que ejecutan los pasos del análisis, como qc_pipeline.sh (Control de Calidad) y align_reads.py (Script de alineamiento).
* [Results](./Results/): salidas de cada etapa [graphics](./Results/graphics/), [analyses](./Results/analyses/), [summary](./Results/summary/) asi como QC_Reports, Aligned y VCF_Files.
* [Docs](./Docs/): documentación, protocolos y guías de instalación. Contiene Protocolo_de_Alineamiento.md y Guia_de_Dependencias.md.
  
## Propósito del Proyecto

El objetivo es analizar los datos de secuenciación, asegurando la trazabilidad completa de los cambios mediante el control de versiones.

## Pipeline de Análisis
El proyecto está organizado según las etapas de un análisis genómico, y cada etapa usa herramientas específicas (simuladas en nuestros scripts):

* Control de Calidad (QC): Utilizamos la herramienta FastQC (simulada) para generar los reportes de calidad tanto antes como después del filtrado.
* Pre-procesamiento: Esta etapa incluye el Trimming de adaptadores para obtener archivos FASTQ limpios, listos para alinear.
  Alineamiento: Empleamos BWA-MEM para generar archivos BAM o SAM alineados, los cuales se encuentran dentro de Results/Aligned/.
* Anotación/Varianza: Usamos GATK para la llamada de variantes y la generación de archivos VCF con las variantes genéticas identificadas.

## COLABORADORES DEL REPOSITORIO
* Jose Maria Sevilla Avendaño 
* Jose Antonio Celada Guerrero 
* Judit Del Valle Molina 
* Jesús Javier Amat Pamies 
* Fatima Goiri Presmanes

## Licencia del Proyecto
Este proyecto está distribuido bajo la MIT License.

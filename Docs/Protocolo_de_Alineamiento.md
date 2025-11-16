Fecha de última actualización: 16 de Noviembre de 2025
Responsable: Grupo 10
Versión: 1.0

1. Objetivo

El objetivo de este protocolo es describir el procedimiento estandarizado para alinear lecturas de secuenciación de ARN (limpias y procesadas) contra un genoma de referencia. Este paso es crítico para determinar el origen genómico de cada lectura y posteriormente cuantificar la expresión génica.

2. Requisitos Previos

2.1 Datos de Entrada (Input)

Lecturas Limpias: Archivos .fastq.gz ubicados en Data/processedData/. Estos archivos deben haber pasado el control de calidad (QC) y el trimming de adaptadores.

Genoma de Referencia: Archivo FASTA del genoma (ej. Homo sapiens GRCh38) y sus archivos de índice correspondientes. Ubicación: Data/reference/.

2.2 Software Requerido

Las siguientes herramientas (o sus simulaciones en los scripts del proyecto) son necesarias:

HISAT2 (v2.2.1 o superior): Alineador "splice-aware" optimizado para RNA-Seq.

Samtools (v1.10 o superior): Para manipulación de archivos SAM/BAM.

3. Flujo de Trabajo (Pipeline)

Paso 1: Indexado del Genoma

Nota: Este paso se realiza una sola vez por organismo.
Antes de alinear, el genoma de referencia debe ser transformado en un índice para búsquedas rápidas.

# Comando ejemplo
hisat2-build -p 4 Data/reference/genome.fa Data/reference/genome_index


Paso 2: Alineamiento (Mapping)

Ejecución del script Scripts/align_reads.py que automatiza el alineamiento de cada muestra contra el índice.

Parámetros clave utilizados:

--dta: Optimización para análisis de transcriptoma posterior.

-x: Ruta al índice del genoma.

-U: Ruta al archivo de lecturas single-end (o -1 y -2 para paired-end).

Salida: Archivo en formato SAM (Sequence Alignment Map).

Paso 3: Conversión y Ordenamiento (SAM a BAM)

Los archivos SAM son muy pesados. Se deben convertir a formato binario comprimido (BAM) y ordenar por coordenada genómica para que herramientas posteriores (como IGV o featureCounts) funcionen correctamente.

# Conversión SAM -> BAM
samtools view -bS Results/Aligned/muestra.sam > Results/Aligned/muestra_unsorted.bam

# Ordenamiento
samtools sort Results/Aligned/muestra_unsorted.bam -o Results/Aligned/muestra.bam

# Indexado del BAM
samtools index Results/Aligned/muestra.bam


4. Control de Calidad del Alineamiento

Una vez finalizado el alineamiento, se debe verificar el porcentaje de éxito ("Alignment Rate").

Criterios de Aceptación:

> 70% de alineamiento global: Se considera aceptable para RNA-Seq estándar.

< 5% de lecturas multimapeadas: Un exceso indica secuencias repetitivas o baja complejidad.

El archivo de resumen se generará en: Results/summary/alignment_stats.txt.

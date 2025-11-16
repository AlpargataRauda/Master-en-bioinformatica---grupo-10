#!/bin/bash

# ------------------------------------------------------------------------
# Script de Pipeline de Control de Calidad (QC) - RNA-Seq
# ------------------------------------------------------------------------
# Grupo: 10
# Propósito: Evaluar calidad de lecturas crudas y realizar limpieza (trimming).
# Herramientas simuladas: FastQC, Trimmomatic
# Input: Data/rawData/*.fastq.gz
# Output: Data/processedData/ (Fastq limpios), Results/QC_Reports/ (Reportes)
# ------------------------------------------------------------------------

# 1. Configuración de Directorios
# ------------------------------------------------------------------------
BASE_DIR="."
RAW_DATA_DIR="$BASE_DIR/Data/rawData"
PROCESSED_DATA_DIR="$BASE_DIR/Data/processedData"
QC_REPORT_DIR="$BASE_DIR/Results/QC_Reports"

# Crear directorios de salida si no existen
mkdir -p "$PROCESSED_DATA_DIR"
mkdir -p "$QC_REPORT_DIR"

echo "=========================================================="
echo "   INICIANDO PIPELINE DE CONTROL DE CALIDAD (RNA-SEQ)     "
echo "=========================================================="
echo "[CONFIG] Directorio de datos crudos: $RAW_DATA_DIR"
echo "[CONFIG] Directorio de reportes QC: $QC_REPORT_DIR"

# 2. Simulación del Proceso para cada muestra
# ------------------------------------------------------------------------
# Imaginamos que tenemos archivos como sample_01.fastq.gz
# Aquí iteramos sobre una lista simulada de muestras
SAMPLES=("Muestra_Control_01" "Muestra_Tratada_01")

for SAMPLE in "${SAMPLES[@]}"; do
    
    INPUT_FILE="$RAW_DATA_DIR/${SAMPLE}.fastq.gz"
    OUTPUT_TRIMMED="$PROCESSED_DATA_DIR/${SAMPLE}_trimmed.fastq.gz"
    
    echo ""
    echo "----------------------------------------------------------"
    echo "Procesando muestra: $SAMPLE"
    echo "----------------------------------------------------------"

    # PASO A: FastQC (Pre-trimming)
    # ------------------------------------------------------------
    echo "[PASO 1] Ejecutando FastQC en datos crudos..."
    # Comando real sería: fastqc -o $QC_REPORT_DIR $INPUT_FILE
    echo "   $ fastqc -o $QC_REPORT_DIR $INPUT_FILE"
    sleep 1 # Simular tiempo de cómputo
    echo "   > Reporte generado: ${QC_REPORT_DIR}/${SAMPLE}_fastqc.html"

    # PASO B: Trimming (Limpieza de adaptadores/calidad)
    # ------------------------------------------------------------
    echo "[PASO 2] Realizando Trimming de adaptadores y baja calidad..."
    # Comando simulado estilo Trimmomatic
    echo "   $ java -jar trimmomatic.jar SE -phred33 $INPUT_FILE $OUTPUT_TRIMMED ILLUMINACLIP:TruSeq3-SE:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36"
    sleep 2 # Simular tiempo de cómputo
    echo "   > Archivo limpio generado: $OUTPUT_TRIMMED"

    # PASO C: FastQC (Post-trimming)
    # ------------------------------------------------------------
    echo "[PASO 3] Verificando calidad post-limpieza..."
    # Comando real sería: fastqc -o $QC_REPORT_DIR $OUTPUT_TRIMMED
    echo "   $ fastqc -o $QC_REPORT_DIR $OUTPUT_TRIMMED"
    sleep 1
    echo "   > Reporte final generado."

done

echo ""
echo "=========================================================="
echo "   PIPELINE DE QC COMPLETADO EXITOSAMENTE                 "

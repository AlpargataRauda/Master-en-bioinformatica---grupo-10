Guía de Dependencias y Configuración del Entorno

Proyecto: Análisis de Expresión Génica (RNA-Seq)
Grupo: 10
Versión: 1.0

1. Introducción

Este documento detalla el software, las librerías y las herramientas bioinformáticas necesarias para ejecutar el pipeline de análisis descrito en este repositorio. Para garantizar la reproducibilidad de los resultados, se recomienda encarecidamente el uso de un gestor de entornos como Conda (Miniconda o Anaconda).

2. Requisitos del Sistema

Sistema Operativo: Linux (Ubuntu 20.04+ recomendado) o macOS. Para usuarios de Windows, es obligatorio el uso de WSL2 (Windows Subsystem for Linux) o GitBash con las herramientas compiladas.

Memoria RAM: Mínimo 8 GB (16 GB+ recomendado para la etapa de alineamiento).

Espacio en Disco: Al menos 50 GB libres para almacenar lecturas crudas, índices del genoma y archivos BAM.

3. Herramientas Bioinformáticas Principales

Las siguientes herramientas deben estar instaladas y accesibles en el PATH del sistema para que los scripts funcionen correctamente:

FastQC (v0.11.9 o superior):

Función: Generación de reportes de calidad visual de las lecturas.

Trimmomatic (v0.39 o superior):

Función: Limpieza de adaptadores y filtrado de calidad de las secuencias crudas.

HISAT2 (v2.2.1 o superior):

Función: Alineamiento de lecturas RNA-Seq al genoma de referencia (splice-aware).

Samtools (v1.10 o superior):

Función: Procesamiento, ordenado e indexado de archivos BAM/SAM.

featureCounts (v2.0.1 o superior):

Función: Cuantificación de lecturas mapeadas (parte del paquete Subread).

GATK (v4.1 o superior):

Función: (Opcional) Llamada de variantes en pasos avanzados del análisis.

4. Dependencias de Lenguajes de Programación

4.1 Python (Versión 3.8 o superior)

Los scripts de automatización (Scripts/*.py) requieren las siguientes librerías estándar y de terceros:

os, sys, subprocess (Librerías estándar)

pandas

numpy

4.2 R (Versión 4.0 o superior)

Para el análisis de expresión diferencial y la generación de gráficos, se requieren los siguientes paquetes de Bioconductor:

DESeq2 o edgeR

ggplot2

pheatmap

dplyr

5. Instalación Rápida (Recomendada)

La forma más segura de replicar nuestro entorno es mediante Conda. Sigue estos pasos:

Instalar Miniconda: Descarga e instala Miniconda desde su web oficial.

Crear el entorno virtual:
Ejecuta el siguiente comando en tu terminal para crear un entorno llamado rnaseq_env con todas las herramientas necesarias:

conda create -n rnaseq_env -c bioconda -c conda-forge python=3.9 fastqc trimmomatic hisat2 samtools subread


Activar el entorno:
Antes de ejecutar cualquier script del repositorio, activa el entorno:

conda activate rnaseq_env


6. Verificación de la Instalación

Para confirmar que tu entorno está listo, puedes ejecutar los siguientes comandos de comprobación:

# Verificar FastQC
fastqc --version

# Verificar HISAT2
hisat2 --version

#!/bin/bash

echo "ENTREGA PRACTICA - OSWALDO ESCOBAR RANGEL"
echo

# ------------------------------------------------------------
# PASO 1
# En este paso se identifica dónde se encuentra el código
# fuente del kernel de Linux.
# En Ubuntu, el kernel se encuentra en el directorio /usr/src
# ------------------------------------------------------------

echo "PASO 1: Ubicación del código fuente del kernel"
echo "El kernel de Linux se encuentra en /usr/src"
echo

echo "Contenido de /usr/src:"
ls /usr/src
echo

# ------------------------------------------------------------
# PASO 2
# El kernel está organizado por subsistemas.
# El scheduler forma parte del núcleo del sistema,
# por lo tanto debe encontrarse dentro del directorio 'kernel'.
# ------------------------------------------------------------

echo "PASO 2: Navegación de la estructura del kernel"
echo "El scheduler pertenece al subsistema 'kernel'"
echo

cd /usr/src/linux-source-5.15.0/linux-source-5.15.0/kernel
ls
echo

# ------------------------------------------------------------
# PASO 3
# Dentro del directorio kernel existe una carpeta llamada 'sched',
# la cual contiene todo lo relacionado con la planificación
# de procesos (process scheduling).
# ------------------------------------------------------------

echo "PASO 3: Buscando el subsistema de scheduling"
echo "El scheduler de procesos se encuentra en el directorio 'sched'"
echo

cd sched
ls
echo

# ------------------------------------------------------------
# PASO 4
# El scheduler por defecto de Linux se llama
# Completely Fair Scheduler (CFS).
# Su implementación principal se encuentra en el archivo fair.c
# ------------------------------------------------------------

#¿Qué es el CFS?
#
# CFS significa Completely Fair Scheduler.
# Es el scheduler por defecto de Linux.
# Su función es repartir el tiempo de CPU
# de forma justa entre los procesos.

echo "PASO 4: Localizando el scheduler por defecto de Linux..."
echo "El archivo clave es: kernel/sched/fair.c"
echo "Este archivo implementa el Completely Fair Scheduler (CFS)."
echo

# Dónde se encuentra el scheduler?
# El código fuente del kernel en Ubuntu se encuentra en /usr/src.
# El scheduler se implementa en el archivo:
# kernel/sched/fair.c

# ------------------------------------------------------------
# Mostrar el código fuente real del scheduler usando cat
# ------------------------------------------------------------

cat fair.c
echo


#PREGUNTA OBLIGATORIA:
# ¿Por qué Linux no implementa directamente FCFS, SJF o RR
# como se presentan en los libros?
#
# RESPUESTA:
# FCFS, SJF y RR son algoritmos teóricos usados para aprender.
# En un sistema real existen muchos procesos ejecutándose
# al mismo tiempo, con diferentes prioridades y necesidades.
#
# Linux necesita un scheduler que sea justo, rápido y escalable.
# Por eso utiliza el Completely Fair Scheduler (CFS),
# que reparte el tiempo de CPU de manera equitativa
# y funciona mejor en sistemas reales.



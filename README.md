# Plantilla Drupal para Google IDX

Esta es una plantilla base diseñada para facilitar el uso de **Drupal** en **Google IDX**, con una preconfiguración lista para usar que acelera el proceso de desarrollo en la nube.

> ⚠️ Ten en cuenta que la **base de datos no se guarda** en esta plantilla, por lo que deberás instalar el sitio cada vez que inicies un nuevo entorno.

## Características principales

- Drupal listo para funcionar en Google IDX
- Archivos `.idx` y `.devcontainer` incluidos
- Docker configurado para entornos compatibles
- Composer configurado con las dependencias básicas
- Preparado para instalación rápida del sitio con configuración incluida

## Requisitos

- Cuenta en [Google IDX](https://idx.dev/)
- Composer (instalado automáticamente en IDX)
- Acceso a internet

## Instrucciones de uso

1. Abre [Google IDX](https://idx.dev/)
2. Crea un nuevo workspace desde este repositorio
3. IDX descargará el entorno y lo preparará automáticamente

### 1. Instalar las dependencias

Una vez abierto el entorno en IDX, abre el terminal e instala las dependencias:

```bash
composer install
```

Esto descargará Drupal y los módulos necesarios definidos en `composer.json`.

### 2. Instalar el sitio

Después de instalar las dependencias, instala Drupal con la configuración incluida. Usa el perfil estándar o tu perfil personalizado si lo has configurado.

```bash
drush si standard --account-name=admin --account-pass=admin --db-url=mysql://user:1234@mysql/colegio --site-name="Drupal IDX"
```

> Puedes cambiar los valores de usuario, contraseña y nombre del sitio según tus preferencias.

> Asegúrate de que el contenedor de la base de datos esté activo si estás usando Docker.

### 3. Acceder al sitio

Una vez finalizada la instalación, podrás acceder al sitio desde la URL pública que te proporciona Google IDX (en la pestaña "Preview").

## Estructura del repositorio

```
/
├── .idx/                  # Configuración específica de Google IDX
├── .devcontainer/         # Entorno de desarrollo con Docker
├── docker/                # Archivos opcionales de Docker
├── web/                   # Directorio raíz de Drupal
├── composer.json          # Dependencias del proyecto
└── README.md              # Este archivo
```

## Notas importantes

- Esta plantilla **no incluye una base de datos persistente**. Cada vez que abras un nuevo entorno en IDX, deberás ejecutar de nuevo `composer install` e instalar el sitio.
- Puedes personalizar la instalación agregando tus propios módulos, configuraciones y temas.

## Créditos

Plantilla creada por [Tu nombre o equipo] para facilitar el desarrollo con Drupal en Google IDX.
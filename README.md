# Plantilla para usar Drupal en Google IDX

Este repositorio contiene una plantilla pensada para arrancar un proyecto con **Drupal** en **Google IDX** de forma rápida. Incluye una configuración básica que permite trabajar desde el primer momento sin necesidad de montar el entorno manualmente.

> ⚠️ Importante: la base de datos **no se guarda**, pero entre sesiones seguirá existiendo a no ser que resetees el entorno.

## ¿Qué incluye esta plantilla?

- Drupal listo para funcionar en entornos de desarrollo en la nube (IDX)
- Archivos de configuración para `.idx`
- Dependencias gestionadas con Composer
- Preparado para lanzar la instalación de Drupal fácilmente

## Requisitos previos

- Tener una cuenta en [Google IDX](https://idx.dev/)
- Composer (ya viene instalado en IDX)
- Conexión a internet

## Primeros pasos

1. Accede a [Google IDX](https://idx.dev/)
2. Crea un nuevo entorno de trabajo (workspace) a partir de este repositorio
3. Una vez cargado, IDX prepara todo lo necesario automáticamente

### 1. Instala las dependencias

Desde el terminal del entorno:

```bash
composer install
```

Este comando descarga Drupal y todos los módulos definidos en el `composer.json`.

### 2. Instala el sitio

Con las dependencias ya instaladas, lanza la instalación del sitio. Puedes usar el perfil estándar o uno personalizado si lo has configurado:

```bash
drush si standard --account-name=admin --account-pass=admin --db-url=mysql://user:1234@mysql/drupal --site-name="Drupal IDX"
```

Puedes ajustar el nombre de usuario, la contraseña, la URL de la base de datos y el nombre del sitio según tus necesidades.

> Asegúrate de que la base de datos esté funcionando si usas Docker.

### 3. Accede a tu sitio

Cuando termine la instalación, puedes usar la opción de "Preview" que ofrece IDX para ver tu sitio en funcionamiento desde el navegador.

## Estructura del proyecto

```
/
├── .idx/                  # Configuración específica para Google IDX
│   └── .data/
│   └── dev.nix            # Configuración del entorno Nix
├── .vscode/               # Configuración opcional de VS Code
├── my_site/               # Carpeta principal del proyecto Drupal
│   ├── config/            # Configuración del sitio
│   ├── recipes/           # Recetas de instalación (distribuciones, perfiles, etc.)
│   ├── vendor/            # Librerías instaladas por Composer
│   ├── web/               # Carpeta raíz del sitio Drupal (index.php, core, modules, etc.)
│   ├── .editorconfig          # Reglas de estilo para editores compatibles
│   ├── .gitattributes         # Configuración de Git para atributos de archivos
│   ├── .gitignore             # Archivos y carpetas que Git debe ignorar
│   ├── composer.json          # Definición de dependencias y configuración de Composer
│   └── composer.lock          # Archivo generado por Composer con versiones bloqueadas
└── README.md              # Esta guía
```

## Consideraciones

- La base de datos no se guarda, por lo que necesitarás reinstalar Drupal reseteas el entorno.
- Puedes adaptar la plantilla para incluir tus módulos, temas o configuraciones personalizadas.
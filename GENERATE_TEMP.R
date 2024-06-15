tempdir <- "C:/Users/victo/AppData/Local/Temp/RtmpmIW1aD"
if (!dir.exists(tempdir)) {
  dir.create(tempdir, recursive = TRUE)
}

# Intenta crear un archivo temporal en el directorio
file.create(file.path(tempdir, "test.txt"))


# Definir un nuevo directorio temporal
tempdir <- "C:/ruta/a/tu/directorio/temporal"
if (!dir.exists(tempdir)) {
  dir.create(tempdir, recursive = TRUE)
}

# Establecer el nuevo directorio temporal en R
Sys.setenv(TEMP = tempdir)
Sys.setenv(TMPDIR = tempdir)
Sys.setenv(TMP = tempdir)

# Verifica si puedes crear un archivo en el nuevo directorio temporal
file.create(tempfile(tmpdir = tempdir))


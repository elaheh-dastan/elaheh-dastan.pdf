# show available recipes
default:
    @just --list

# build both variants
build: spain iran

# spain variant → build/elaheh-spain.pdf
spain:
    @mkdir -p build
    typst compile src/cv.typ build/elaheh-spain.pdf --input profile=spain --font-path fonts

# iran variant → build/elaheh-iran.pdf
iran:
    @mkdir -p build
    typst compile src/cv.typ build/elaheh-iran.pdf --input profile=iran --font-path fonts

# rebuild a variant on save (profile is required, e.g. `just watch spain`)
watch profile:
    @mkdir -p build
    typst watch src/cv.typ build/elaheh-{{profile}}.pdf --input profile={{profile}} --font-path fonts

# remove build artifacts
clean:
    rm -rf build

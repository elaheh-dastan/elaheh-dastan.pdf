# show available recipes
default:
    @just --list

# build the resume → build/elaheh.pdf
build:
    @mkdir -p build
    typst compile src/cv.typ build/elaheh.pdf --font-path fonts

# rebuild on save
watch:
    @mkdir -p build
    typst watch src/cv.typ build/elaheh.pdf --font-path fonts

# remove build artifacts
clean:
    rm -rf build

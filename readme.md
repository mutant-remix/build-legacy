# Mutant Remix Build Files

This repository contains all of the files required to build a custom Mutant Remix package using Orxporter.

Mutant Remix is a fork of [Mutant Standard](https://mutant.tech/) with design changes by nizune.

-----

This repository has no warranty and has only been tested with Arch Linux. :)

-----

## License

Everything in this repository is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/).

-----

## Requirements

Links below point to my Git mirror.

- [Orxporter 0.4.2](https://git.insrt.uk/mirrors/orxporter)
- [Forc](https://git.insrt.uk/mirrors/forc)

---

### Images

- Download the latest version of Orxporter.
- Place Orxporter in the `Orxporter` directory.
- Start running export commands from the root directory of this repo.

If you want some ideas on how to make your own scripts and commands, in the root of this repo there are `.command` executable scripts, all of which are the ones I use in everyday tests and for the final export of each release.

The [Orxporter repo](https://github.com/mutantstandard/Orxporter/) has full documentation on how to create your own build commands and understand manifest files.

### Fonts

*(this is just a basic quick guide for now)*

- Download the latest version of Orxporter and put it in this folder (as described above), export like this:

```
./Orxporter/orxport.py -m manifest/out.orx -i ../input -q 32x32 -o out/font_sources -F svg,png-32,png-64,png-128 -t 4 -f %f/%u
```

- Download the latest version of Forc.
- Place Forc in the `Forc` directory.
- Then build fonts with Forc like this...


```
./Forc/Forc.py -m manifest/font/manifest.json -a manifest/font/aliases.json -i out/font_sources -o out/fonts -F [formats] --afsc
```

See Forc's help (`-h` flag) to see what formats you can export to. Forc also has a readme and documentation.

(the `--afsc` build flag is super-important if you're building a SVG font with Mutant Standard's images, **do not remove it**.)

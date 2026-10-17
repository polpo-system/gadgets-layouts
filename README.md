# gadgets-layouts

Layouts for the gadgets of [polpo](https://github.com/polpo-system/polpo): descriptions of gadget
layouts as trees of nodes (objects, horizontal and vertical lists, tables, places, attributes,
links, definitions and instances), realized as gadgets with `Layouts.Realize`. It is the library
under the layout languages of ETH Oberon; programs build panels with it.

```
portia.Install gadgets-layouts
```

## What is here

    src/OLR.Layouts.Mod
    test/LayoutsTest.Mod

Layouts is by Joerg Derungs. The source comes from ETH Linux Oberon (OLR, 2017-06-18), converted from an Oberon text to plain
text; the first commit has it unchanged. It compiles unchanged with all five of polpo's compilers
(x86, ARM, ARMv7, RISC-V, MIPS).

## Tests

    LayoutsTest.Run      2 checks: a button, and a panel with two buttons in a horizontal list,
                         realized; it needs the desktop's display

The license is GPL-3 (`LICENSE`); the code comes from ETH Oberon, whose license (`LICENSE.ETH`)
asks to keep its copyright notice and conditions, which `LICENSE.ETH` does.

## Initial configuration

This is the very basic configuration of the directory structure, only thing that has been in stalled at this point is the Lazy Package manager.

- custom 
    - houses configuration like key bindings, options, local functions ( empty currently )
- plugins
    - Where all the plugins will be stored, first one loaded is Lazy the plugin package manager: [Lazy](https://lazy.folke.io/)

```script
.
├── init.lua
└── lua
    ├── custom
    │   └── init.lua
    ├── init.lua
    └── plugins
        ├── init.lua
        └── lazy_load.lua

4 directories, 5 files

```

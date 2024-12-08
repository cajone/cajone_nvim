## Initial configuration

This is the very basic configuration of the directory structure

- custom 
    - houses configuration like key binding, options, local functions
- plugins
    - Where all the plugins will be stored, first one load is Lazy the plugin package manager
    - [Lazy](https://lazy.folke.io/)

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

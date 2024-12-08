## Initial configuration

This is the very basic configuration of the directory structure, only thing that has been in stalled at this point is the Lazy Package manager.

- custom 
    - houses configuration like key bindings, options, local functions ( empty currently )
- plugins
    - Where all the plugins will be stored, first one loaded is Lazy the plugin package manager: [Lazy](https://lazy.folke.io/)
    - lsp
        lsp_config : Added support for lua - See omnifunc \<Ctrl-X\>\<Ctrl-o\>
    - git
        git module contains tools such as fugitive, diffview, to allow interaction with git without having to step back to the command line

```script

.
├── init.lua
├── lazy-lock.json
├── lua
│   ├── custom
│   │   └── init.lua
│   ├── init.lua
│   └── plugins
│       ├── git.lua
│       ├── init.lua
│       ├── lazy_load.lua
│       └── lsp
│           └── lsp_config.lua
└── README.md

5 directories, 9 files
```

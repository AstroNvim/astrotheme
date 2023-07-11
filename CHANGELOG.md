# Changelog

## [2.1.0](https://github.com/AstroNvim/astrotheme/compare/v2.0.1...v2.1.0) (2023-07-11)


### Features

* **astromars:** complete astromars remake ([bdf165b](https://github.com/AstroNvim/astrotheme/commit/bdf165bdcb7ca411967cdba799ca48abf6cd709d))


### Bug Fixes

* **aerial:** move all text to ui.text & add ui.accent ([3ca6be8](https://github.com/AstroNvim/astrotheme/commit/3ca6be88f13c3f1e2dd16258bf576f5880ead4be))
* **astrodark:** re-balance syntax colors, make ui.text brighter ([b85a49d](https://github.com/AstroNvim/astrotheme/commit/b85a49d3829221a4037161394256b48e6e495155))

## [2.0.1](https://github.com/AstroNvim/astrotheme/compare/v2.0.0...v2.0.1) (2023-07-10)


### Bug Fixes

* fix when calling `:colorscheme astrotheme` ([200c833](https://github.com/AstroNvim/astrotheme/commit/200c83352b28a69f47cc64ff07b8529f317a2585))

## [2.0.0](https://github.com/AstroNvim/astrotheme/compare/v1.7.0...v2.0.0) (2023-07-10)


### ⚠ BREAKING CHANGES

* renamed all secondary colors to have a prefix of alt_xxxx
* **palettes:** astrolight revision 2

### Features

* add dev feature live color reloading ([f71d3e1](https://github.com/AstroNvim/astrotheme/commit/f71d3e1b23117723d878b4ecc6c306c38e82ffd7))
* add nvim-window-picker support ([26447ae](https://github.com/AstroNvim/astrotheme/commit/26447ae1217a003d89ec06e21b3b3c22c4fe1910))
* **astrodark:** add accents and complete rework of all colors ([4b760b1](https://github.com/AstroNvim/astrotheme/commit/4b760b1743840027b96b995ed1b88a64a4e4d9a9))
* **astrodark:** add more color palettes and more ([018f4b7](https://github.com/AstroNvim/astrotheme/commit/018f4b707ef2f704d4746d65637edd12175d78c2))
* **astrodark:** initial palette refresh; update to new naming scheme ([23a6e2e](https://github.com/AstroNvim/astrotheme/commit/23a6e2ee891183e02de85929bf7dd5eb8ae99ab3))
* **astrodark:** refactor main UI background colors ([f2ef6d2](https://github.com/AstroNvim/astrotheme/commit/f2ef6d275bb5302387789f080b21d56512e8ddd3))
* **astrolight:** initial palette refresh; update to new naming scheme ([42b07ff](https://github.com/AstroNvim/astrotheme/commit/42b07ffd271d1df37d0a4d01ff4fbb00e1ba327a))
* **astrolight:** update palettes to use new properties ([ea19b90](https://github.com/AstroNvim/astrotheme/commit/ea19b90e928a364488de69482f6c7ed815a1905f))
* **astromars:** initial palette refresh; update to new naming scheme ([faccafe](https://github.com/AstroNvim/astrotheme/commit/faccafe78f674049c4050f861a98da613d5b7bab))
* **astromars:** large palette change and value balancing ([873c6a0](https://github.com/AstroNvim/astrotheme/commit/873c6a0bac262a6236f300675667e8372f7749ca))
* **base:** add palette for status, change tabline to crust ([7905486](https://github.com/AstroNvim/astrotheme/commit/790548630b0ec4b62826c2bfc1b07cb2dc7c77c6))
* **base:** change diff to have more readable colors ([1fb9920](https://github.com/AstroNvim/astrotheme/commit/1fb99203eb92ec2a999fa383339ba85d6a2aeb0d))
* **base:** change search to have more readable colors ([af4935b](https://github.com/AstroNvim/astrotheme/commit/af4935b560cb3abb3e3145848167e92d8a0295ed))
* change subtext0 & subtext1 to better names; more palette properties ([2643ccf](https://github.com/AstroNvim/astrotheme/commit/2643ccf2189b858fa78212c3ca778a1946bb6b15))
* **cmp:** change deprecated item to be red with strike through ([07c9590](https://github.com/AstroNvim/astrotheme/commit/07c9590d00d41bc7dcbe7a8fe920e03e230bad26))
* **config:** add style table with properties that can be changed ([e7eb895](https://github.com/AstroNvim/astrotheme/commit/e7eb895ebb8c1c14cea6d6dcd7c17c4890df3efc))
* **config:** make inactive default; add neo-tree style option ([dbf2d9b](https://github.com/AstroNvim/astrotheme/commit/dbf2d9b546f3918c7c8959ead727e9f92251d31c))
* large update to new naming scheme; complete color rework ([791dad8](https://github.com/AstroNvim/astrotheme/commit/791dad863ecf67b9ff86d503bb8254ec14d93954))
* **neo-tree:** add opts for background configurations ([55e9308](https://github.com/AstroNvim/astrotheme/commit/55e9308ec48f522e7dec31dae5688205f37ffe5f))
* **neo-tree:** make tabs feel more integrated ([30ec241](https://github.com/AstroNvim/astrotheme/commit/30ec2416a0c721423c8918fba3510b42f65e9195))
* **palettes:** add astromars ([d2106bb](https://github.com/AstroNvim/astrotheme/commit/d2106bbb285492b1c164a7d4d775af3ff541be33))
* **plugins:** add flash.nvim support ([ab46df6](https://github.com/AstroNvim/astrotheme/commit/ab46df6551ecc14eeea9232a7714e87b2971311a))
* **plugins:** add rainbow-delimiters.nvim ([f13c2e5](https://github.com/AstroNvim/astrotheme/commit/f13c2e579acd6561680ae18ea3c5a3f76f83b1bd))
* respect `vim.o.background` when set to `light`/`dark` ([567f886](https://github.com/AstroNvim/astrotheme/commit/567f8867af5ecd1741dc221af6a1784391842ff4))
* swapped subtext0 and subtext1 around ([b74b5f4](https://github.com/AstroNvim/astrotheme/commit/b74b5f4eaccd3b582320211781091f9f686289ea))
* **telescope:** add opts for background configurations ([cce4469](https://github.com/AstroNvim/astrotheme/commit/cce4469607c4bd5c8c18fa231f6e35240f80d77c))
* **tree-sitter:** add markdown titles ([7b93f1b](https://github.com/AstroNvim/astrotheme/commit/7b93f1b0f18c8382ef15ffe6e6a92c14d31a8aec))
* **treesitter:** add better separation to builtin and alt methods/var ([27ee450](https://github.com/AstroNvim/astrotheme/commit/27ee450aed6bbf898cc55e476a859bd17b1c3d57))
* **util:** add function to reload modules ([6b74256](https://github.com/AstroNvim/astrotheme/commit/6b74256221faf4df17eb52a97b874e22db214c41))
* **util:** change terminal_color to follow new name scheme ([3d2aa78](https://github.com/AstroNvim/astrotheme/commit/3d2aa781daab5cc09dfe4ff26ac4a11dec9ea7ea))
* **utils:** add opts to be accessed from hl group callbacks ([64640a8](https://github.com/AstroNvim/astrotheme/commit/64640a88892f09cfece6daf8a9aea52971ce6337))
* **which-key:** add more hl groups and opts ([cf3ff3a](https://github.com/AstroNvim/astrotheme/commit/cf3ff3ab139662064f338a36bd07c5fc3cbda7a5))


### Bug Fixes

* **astrolight:** add properties and blocked out colors so it can load ([9f299ee](https://github.com/AstroNvim/astrotheme/commit/9f299ee1070a80eb2b372942c159cc06b9d56b79))
* **astromars:** add properties and blocked out colors so it can load ([003fb46](https://github.com/AstroNvim/astrotheme/commit/003fb46f836cf4edab665487f8e5bb0b53413d67))
* **base:** dim `FoldColumn` ([f8f358d](https://github.com/AstroNvim/astrotheme/commit/f8f358dc564ab4c00b4c9f98ea6f4aa82e9c420f))
* **config:** add missing check for italic comments ([3a8f753](https://github.com/AstroNvim/astrotheme/commit/3a8f753921708320216a87d5ea218920bcb1bdd5))
* inactive window colors work as expected ([72055d1](https://github.com/AstroNvim/astrotheme/commit/72055d15716bd0b1b79390c2efa755c85ab455ab))
* **indent-blankline:** correct file name so that it loads ([39220a8](https://github.com/AstroNvim/astrotheme/commit/39220a80830d3d0ad86e2317188ff539b015f58d))
* **neo-tree:** fix neo-tree indentation marker ([0da2b88](https://github.com/AstroNvim/astrotheme/commit/0da2b884170c0147deb95257a86587dadc5bc0c4))


### Code Refactoring

* **palettes:** astrolight revision 2 ([cd57e69](https://github.com/AstroNvim/astrotheme/commit/cd57e6908c372683e719bb3681964a7b69d2114f))
* renamed all secondary colors to have a prefix of alt_xxxx ([2e3034a](https://github.com/AstroNvim/astrotheme/commit/2e3034a2241562e9d9783c4d7241f6bf4583e820))

## [1.7.0](https://github.com/AstroNvim/astrotheme/compare/v1.6.1...v1.7.0) (2023-06-20)


### Features

* **lsp:** add LspInlayHint highlight ([8bb8e20](https://github.com/AstroNvim/astrotheme/commit/8bb8e205cbbb93d9c61f7db2d07bae0f8f20d11a))

## [1.6.1](https://github.com/AstroNvim/astrotheme/compare/v1.6.0...v1.6.1) (2023-05-23)


### Bug Fixes

* **dap-ui:** change variable color to be legible ([#36](https://github.com/AstroNvim/astrotheme/issues/36)) ([5b252ec](https://github.com/AstroNvim/astrotheme/commit/5b252ec8a24b52a9c1ebef929740ace18c5a8898))

## [1.6.0](https://github.com/AstroNvim/astrotheme/compare/v1.5.0...v1.6.0) (2023-05-12)


### Features

* **base:** add cursor colors and missing cursor groups ([efd89b8](https://github.com/AstroNvim/astrotheme/commit/efd89b870234d52f0c989777de4d3a8c0edba707))
* **lightspeed:** add missing hl groups; change some hl to links ([60f93ef](https://github.com/AstroNvim/astrotheme/commit/60f93efab5504193082acbf7cb5c3085ce17f441))
* **noice:** add initial support for noice ([8a368f0](https://github.com/AstroNvim/astrotheme/commit/8a368f056ee60409665406df0889147c9dddf5eb))

## [1.5.0](https://github.com/AstroNvim/astrotheme/compare/v1.4.0...v1.5.0) (2023-04-13)


### Features

* **treesitter:** add more hl groups and reformat to mirror docs ([#26](https://github.com/AstroNvim/astrotheme/issues/26)) ([bda69f0](https://github.com/AstroNvim/astrotheme/commit/bda69f0d6abd2f1205bb4e76634d4675ac040939))

## [1.4.0](https://github.com/AstroNvim/astrotheme/compare/v1.3.0...v1.4.0) (2023-04-11)


### Features

* **treesitter:** major syntax theme rework for better readability ([#24](https://github.com/AstroNvim/astrotheme/issues/24)) ([90ea2ed](https://github.com/AstroNvim/astrotheme/commit/90ea2edae1c07d45c6cea9133279e53d87236d34))

## [1.3.0](https://github.com/AstroNvim/astrotheme/compare/v1.2.1...v1.3.0) (2023-04-11)


### Features

* **treesitter:** add hl '[@tag](https://github.com/tag).attribute' ([#23](https://github.com/AstroNvim/astrotheme/issues/23)) ([916da51](https://github.com/AstroNvim/astrotheme/commit/916da5131d78abf39934611acb41dc4da191529c))


### Bug Fixes

* **ci:** stable tag name is fixed and will always exist so force push to it on releases ([33e8b06](https://github.com/AstroNvim/astrotheme/commit/33e8b06dc3bc87995bcc05439486da33717de096))

## [1.2.1](https://github.com/AstroNvim/astrotheme/compare/v1.2.0...v1.2.1) (2023-04-07)


### Bug Fixes

* **hl:** add missing diff highlight groups ([0e81659](https://github.com/AstroNvim/astrotheme/commit/0e81659f22bab6667788dd88b62cd3a8b77fb9e2))

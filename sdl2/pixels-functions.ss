(define-sdl-func string sdl-get-pixel-format-name ((format uint32)) "SDL_GetPixelFormatName")
(define-sdl-func sdl-bool-t sdl-pixel-format-enum-to-masks ((format uint32) (bpp (* int)) (Rmask (* uint32)) (Gmask (* uint32)) (Bmask (* uint32)) (Amask (* uint32))) "SDL_PixelFormatEnumToMasks")
(define-sdl-func uint32 sdl-masks-to-pixel-format-enum ((bpp int) (Rmask uint32) (Gmask uint32) (Bmask uint32) (Amask uint32)) "SDL_MasksToPixelFormatEnum")
(define-sdl-func (* sdl-pixel-format-t) sdl-alloc-format ((pixel_format uint32)) "SDL_AllocFormat")
(define-sdl-func void sdl-free-format ((format (* sdl-pixel-format-t))) "SDL_FreeFormat")
(define-sdl-func (* sdl-palette-t) sdl-alloc-palette ((ncolors int)) "SDL_AllocPalette")
(define-sdl-func int sdl-set-pixel-format-palette ((format (* sdl-pixel-format-t)) (palette (* sdl-palette-t))) "SDL_SetPixelFormatPalette")
(define-sdl-func int sdl-set-palette-colors ((palette (* sdl-palette-t)) (colors (* sdl-color-t)) (firstcolor int) (ncolors int)) "SDL_SetPaletteColors")
(define-sdl-func void sdl-free-palette ((palette (* sdl-palette-t))) "SDL_FreePalette")
(define-sdl-func uint32 sdl-map-rgb ((format (* sdl-pixel-format-t)) (r uint8) (g uint8) (b uint8)) "SDL_MapRGB")
(define-sdl-func uint32 sdl-map-rgba ((format (* sdl-pixel-format-t)) (r uint8) (g uint8) (b uint8) (a uint8)) "SDL_MapRGBA")
(define-sdl-func void sdl-get-rgb ((pixel uint32) (format (* sdl-pixel-format-t)) (r (* uint8)) (g (* uint8)) (b (* uint8))) "SDL_GetRGB")
(define-sdl-func void sdl-get-rgba ((pixel uint32) (format (* sdl-pixel-format-t)) (r (* uint8)) (g (* uint8)) (b (* uint8)) (a (* uint8))) "SDL_GetRGBA")
(define-sdl-func void sdl-calculate-gamma-ramp ((gamma float) (ramp (* uint16))) "SDL_CalculateGammaRamp")

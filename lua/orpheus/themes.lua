local c = require("orpheus.lib.color")

--TODO:
--PreProc needs its own color
--parameter and field should be different
---@class SyntaxElements
---@field string ColorSpec
---@field variable ColorSpec
---@field number ColorSpec
---@field constant ColorSpec
---@field identifier ColorSpec
---@field parameter ColorSpec
---@field fun ColorSpec
---@field statement ColorSpec
---@field keyword ColorSpec
---@field operator ColorSpec
---@field preproc ColorSpec
---@field type ColorSpec
---@field regex ColorSpec
---@field deprecated ColorSpec
---@field comment ColorSpec
---@field punct ColorSpec
---@field special1 ColorSpec
---@field special2 ColorSpec
---@field special3 ColorSpec

---@class DiagnosticsElements
---@field error ColorSpec
---@field ok ColorSpec
---@field warning ColorSpec
---@field info ColorSpec
---@field hint ColorSpec
--
---@class DiffElements
---@field add ColorSpec
---@field delete ColorSpec
---@field change ColorSpec
---@field text ColorSpec

---@class VCSElements
---@field added ColorSpec
---@field removed ColorSpec
---@field changed ColorSpec

---@class UiElements
---@field fg ColorSpec Default foreground
---@field fg_dim ColorSpec Dimmed foreground
---@field fg_reverse ColorSpec
---@field bg_dim ColorSpec Dimmed background
---@field bg_m3 ColorSpec
---@field bg_m2 ColorSpec
---@field bg_m1 ColorSpec
---@field bg ColorSpec Default background
---@field bg_p1 ColorSpec Lighter background ColorColumn, Folded, Gutter
---@field bg_p2 ColorSpec Lighter background Cursor{Line,Column}, TabLineSel (Selected Items)
---@field bg_gutter ColorSpec {Sign,Fold}Column, LineNr
---@field special ColorSpec SpecialKey
---@field nontext ColorSpec LineNr, NonText
---@field whitespace ColorSpec Whitespace
---@field bg_search ColorSpec
---@field bg_visual ColorSpec
---@field pmenu MenuElements
---@field float FloatElements

---@class FloatElements
---@field fg ColorSpec
---@field bg ColorSpec
---@field fg_border ColorSpec
---@field bg_border ColorSpec

---@class MenuElements
---@field bg ColorSpec
---@field fg ColorSpec
---@field fg_sel ColorSpec
---@field bg_sel ColorSpec
---@field bg_sbar ColorSpec
---@field bg_thumb ColorSpec

---@class ThemeColors
---@field syn SyntaxElements
---@field diag DiagnosticsElements
---@field vcs VCSElements
---@field diff DiffElements
---@field ui UiElements
---@field term ColorSpec[]

return {
    ---@param palette PaletteColors
    ---@return ThemeColors
    wave = function(palette)
        return {
            ui = {
                fg         = palette.fujiWhite,
                fg_dim     = palette.oldWhite,
                fg_reverse = palette.waveBlue1,

                bg_dim     = palette.sumiInk1,
                bg_gutter  = palette.sumiInk4,

                bg_m3      = palette.sumiInk0,
                bg_m2      = palette.sumiInk1,
                bg_m1      = palette.sumiInk2,
                bg         = palette.sumiInk3,
                bg_p1      = palette.sumiInk4,
                bg_p2      = palette.sumiInk5,

                special    = palette.springViolet1,
                nontext    = palette.sumiInk6,
                whitespace = palette.sumiInk6,

                bg_search  = palette.waveBlue2,
                bg_visual  = palette.waveBlue1,

                pmenu      = {
                    fg       = palette.fujiWhite,
                    fg_sel   = "none", -- This is important to make highlights pass-through
                    bg       = palette.waveBlue1,
                    bg_sel   = palette.waveBlue2,
                    bg_sbar  = palette.waveBlue1,
                    bg_thumb = palette.waveBlue2,
                },
                float      = {
                    fg        = palette.oldWhite,
                    bg        = palette.sumiInk0,
                    fg_border = palette.sumiInk6,
                    bg_border = palette.sumiInk0,
                },
            },
            syn = {
                string     = palette.springGreen,
                variable   = "none",
                number     = palette.sakuraPink,
                constant   = palette.surimiOrange,
                identifier = palette.carpYellow,
                -- parameter  = "#C3B1B1",
                -- parameter  = "#B1ADC8",
                -- parameter  = "#b8b4d0",
                parameter  = palette.oniViolet2,
                -- parameter = "#d5a4a6",
                -- parameter  = "#C8ADAD",
                -- parameter  = "#d7a8a8",
                fun        = palette.crystalBlue,
                statement  = palette.oniViolet,
                keyword    = palette.oniViolet,
                operator   = palette.boatYellow2,
                preproc    = palette.waveRed, --lightBlue? deserves its own color
                type       = palette.waveAqua2,
                regex      = palette.boatYellow2,
                deprecated = palette.katanaGray,
                comment    = palette.fujiGray,
                punct      = palette.springViolet2,
                special1   = palette.springBlue,
                special2   = palette.waveRed,
                special3   = palette.peachRed,
            },
            vcs = {
                added   = palette.autumnGreen,
                removed = palette.autumnRed,
                changed = palette.autumnYellow,
            },
            diff = {
                add    = palette.winterGreen,
                delete = palette.winterRed,
                change = palette.winterBlue,
                text   = palette.winterYellow,
            },
            diag = {
                ok      = palette.springGreen,
                error   = palette.samuraiRed,
                warning = palette.roninYellow,
                info    = palette.dragonBlue,
                hint    = palette.waveAqua1,
            },
            term = {
                palette.sumiInk0, -- black
                palette.autumnRed, -- red
                palette.autumnGreen, -- green
                palette.boatYellow2, -- yellow
                palette.crystalBlue, -- blue
                palette.oniViolet, -- magenta
                palette.waveAqua1, -- cyan
                palette.oldWhite, -- white
                palette.fujiGray, -- bright black
                palette.samuraiRed, -- bright red
                palette.springGreen, -- bright green
                palette.carpYellow, -- bright yellow
                palette.springBlue, -- bright blue
                palette.springViolet1, -- bright magenta
                palette.waveAqua2, -- bright cyan
                palette.fujiWhite, -- bright white
                palette.surimiOrange, -- extended color 1
                palette.peachRed, -- extended color 2
            },
        }
    end,
    ---@param palette PaletteColors
    ---@return ThemeColors
    dragon = function(palette)
        return {
            ui = {
                fg         = palette.dragonWhite,
                fg_dim     = palette.oldWhite,
                fg_reverse = palette.waveBlue1,

                bg_dim     = palette.dragonBlack1,
                bg_gutter  = palette.dragonBlack4,

                bg_m3      = palette.dragonBlack0,
                bg_m2      = palette.dragonBlack1,
                bg_m1      = palette.dragonBlack2,
                bg         = palette.dragonBlack3,
                bg_p1      = palette.dragonBlack4,
                bg_p2      = palette.dragonBlack5,

                special    = palette.dragonGray3,
                whitespace = palette.dragonBlack6,
                nontext    = palette.dragonBlack6,

                bg_visual  = palette.waveBlue1,
                bg_search  = palette.waveBlue2,

                pmenu      = {
                    fg       = palette.fujiWhite,
                    fg_sel   = "none",
                    bg       = palette.waveBlue1,
                    bg_sel   = palette.waveBlue2,
                    bg_thumb = palette.waveBlue2,
                    bg_sbar  = palette.waveBlue1,
                },

                float      = {
                    fg        = palette.oldWhite,
                    bg        = palette.dragonBlack0,
                    fg_border = palette.sumiInk6,
                    bg_border = palette.dragonBlack0,
                },
            },
            syn = {
                string     = palette.dragonGreen2,
                variable   = "none",
                number     = palette.dragonPink,
                constant   = palette.dragonOrange,
                identifier = palette.dragonYellow,
                parameter  = palette.dragonGray,
                fun        = palette.dragonBlue2,
                statement  = palette.dragonViolet,
                keyword    = palette.dragonViolet,
                operator   = palette.dragonRed,
                preproc    = palette.dragonRed,
                type       = palette.dragonAqua,
                regex      = palette.dragonRed,
                deprecated = palette.katanaGray,
                punct      = palette.dragonGray2,
                comment    = palette.dragonAsh,
                special1   = palette.dragonTeal,
                special2   = palette.dragonRed,
                special3   = palette.dragonRed,
            },
            diag = {
                error   = palette.samuraiRed,
                ok      = palette.springGreen,
                warning = palette.roninYellow,
                info    = palette.dragonBlue,
                hint    = palette.waveAqua1,
            },
            diff = {
                add    = palette.winterGreen,
                delete = palette.winterRed,
                change = palette.winterBlue,
                text   = palette.winterYellow,
            },
            vcs = {
                added   = palette.autumnGreen,
                removed = palette.autumnRed,
                changed = palette.autumnYellow,
            },
            term = {
                palette.dragonBlack0, -- black
                palette.dragonRed, -- red
                palette.dragonGreen2, -- green
                palette.dragonYellow, -- yellow
                palette.dragonBlue2, -- blue
                palette.dragonPink, -- magenta
                palette.dragonAqua, -- cyan
                palette.oldWhite, -- white
                palette.dragonGray, -- bright black
                palette.waveRed, -- bright red
                palette.dragonGreen, -- bright green
                palette.carpYellow, -- bright yellow
                palette.springBlue, -- bright blue
                palette.springViolet1, -- bright magenta
                palette.waveAqua2, -- bright cyan
                palette.dragonWhite, -- bright white
                palette.dragonOrange, -- extended color 1
                palette.dragonOrange2, -- extended color 2
            },
        }
    end,
    ---@param palette PaletteColors
    ---@return ThemeColors
    lotus = function(palette)
        return {
            ui = {
                fg         = palette.medjatBlack,
                fg_dim     = palette.medjatGrey,
                fg_reverse = palette.medjatPapyrusLight,

                bg_dim     = palette.medjatPapyrusDark,
                bg_gutter  = palette.medjatPapyrusBase,
                bg_m3      = palette.medjatPapyrusDark,
                bg_m2      = palette.medjatPapyrusDark,
                bg_m1      = palette.medjatPapyrusBase,
                bg         = palette.medjatPapyrusBase,
                bg_p1      = palette.medjatPapyrusLight,
                bg_p2      = palette.medjatPapyrusLight,

                nontext    = palette.medjatGrey,
                whitespace = palette.medjatGrey,
                special    = palette.medjatBlue,

                bg_visual  = palette.medjatPapyrusDark,
                bg_search  = palette.medjatPapyrusLight,

                pmenu      = {
                    fg       = palette.medjatBlack,
                    fg_sel   = "none", -- This is important to make highlights pass-through
                    bg       = palette.medjatPapyrusLight,
                    bg_sel   = palette.medjatPapyrusBase,
                    bg_sbar  = palette.medjatPapyrusLight,
                    bg_thumb = palette.medjatPapyrusBase,
                },
                float      = {
                    fg        = palette.medjatBlack,
                    bg        = palette.medjatPapyrusDark,
                    fg_border = palette.medjatGrey,
                    bg_border = palette.medjatPapyrusDark,
                },
            },
            syn = {
                string     = palette.medjatBlack,
                variable   = "none",
                number     = palette.medjatRed,
                constant   = palette.medjatRed,
                identifier = palette.medjatBlack,
                parameter  = palette.medjatRed,
                fun        = palette.medjatRed,
                statement  = palette.medjatRed,
                keyword    = palette.medjatRed,
                operator   = palette.medjatBlack,
                preproc    = palette.medjatRed,
                type       = palette.medjatBlue,
                regex      = palette.medjatRed,
                deprecated = palette.medjatGrey,
                comment    = palette.medjatGrey,
                punct      = palette.medjatBlack,
                special1   = palette.medjatBlue,
                special2   = palette.medjatRed,
                special3   = palette.medjatRed,
            },
            vcs = {
                added   = palette.medjatGreen,
                removed = palette.medjatRed,
                changed = palette.medjatBlue,
            },
            diff = {
                add    = palette.medjatGreen,
                delete = palette.medjatRed,
                change = palette.medjatBlue,
                text   = palette.medjatPapyrusLight,
            },
            diag = {
                error   = palette.medjatRed,
                ok      = palette.medjatGreen,
                warning = palette.medjatRed,
                info    = palette.medjatBlue,
                hint    = palette.medjatBlue,
            },
            term = {
                palette.medjatBlack, -- black
                palette.medjatRed, -- red
                palette.medjatGreen, -- green
                palette.medjatBlue, -- yellow
                palette.medjatBlue, -- blue
                palette.medjatRed, -- magenta
                palette.medjatGreen, -- cyan
                palette.medjatPapyrusBase, -- white
                palette.medjatGrey , -- bright black
                palette.medjatRed, -- bright red
                palette.medjatGreen, -- bright green
                palette.medjatBlue, -- bright yellow
                palette.medjatBlue, -- bright blue
                palette.medjatRed, -- bright magenta
                palette.medjatGreen, -- bright cyan
                palette.medjatBlack, -- bright white
                palette.medjatRed, -- extended color 1
                palette.medjatBlue, -- extended color 2
            },
        }
    end,
}

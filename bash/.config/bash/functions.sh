#!/bin/sh

format() {
    local res=""

    for i in $*; do
        case "$i" in
            reset)              res+="0;";;
            bold|bright)        res+="1;";;
            dim)                res+="2;";;
            underlined)         res+="4;";;
            blink)              res+="5;";;
            reverse)            res+="7;";;
            invert)             res+="7;";;
            hidden)             res+="8;";;
            rmbold)             res+="21;";;
            rmbright)           res+="21;";;
            rmdim)              res+="22;";;
            rmunderlined)       res+="24;";;
            rmblink)            res+="25;";;
            rmreverse)          res+="27;";;
            rminvert)           res+="27;";;
            rmhidden)           res+="28;";;

            fgdefault)          res+="39;";;
            fgreset)            res+="39;";;
            fgblack)            res+="30;";;
            fgred)              res+="31;";;
            fggreen)            res+="32;";;
            fgyellow)           res+="33;";;
            fgblue)             res+="34;";;
            fgmagenta)          res+="35;";;
            fgpurple)           res+="35;";;
            fgcyan)             res+="36;";;
            fglightgray)        res+="37;";;
            fgdarkgray)         res+="90;";;
            fglightred)         res+="91;";;
            fglightgreen)       res+="92;";;
            fglightyellow)      res+="93;";;
            fglightblue)        res+="94;";;
            fglightmagenta)     res+="95;";;
            fglightpink)        res+="95;";;
            fglightcyan)        res+="96;";;
            fgwhite)            res+="97;";;

            bgdefault)          res+="49;";;
            bgreset)            res+="49;";;
            bgblack)            res+="40;";;
            bgred)              res+="41;";;
            bggreen)            res+="42;";;
            bgyellow)           res+="43;";;
            bgblue)             res+="44;";;
            bgmagenta)          res+="45;";;
            bgpurple)           res+="45;";;
            bgcyan)             res+="46;";;
            bglightgray)        res+="47;";;
            bgdarkgray)         res+="100;";;
            bglightred)         res+="101;";;
            bglightgreen)       res+="102;";;
            bglightyellow)      res+="103;";;
            bglightblue)        res+="104;";;
            bglightmagenta)     res+="105;";;
            bglightpink)        res+="105;";;
            bglightcyan)        res+="106;";;
            bgwhite)            res+="107;";;

            *)            :;;

        esac
    done

    if [ -n "$res" ]; then
        res=${res:0:-1}
        echo -e "\001\033[${res}m\002"
    fi
}

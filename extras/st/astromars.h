/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
    /* 8 normal colors */
    "#281E22",
    "#DF8489",
    "#84A860",
    "#C3963D",
    "#4FA9C6",
    "#CD87BA",
    "#4FAD97",
    "#8B7079",

    /* 8 bright colors */
    "#41383A",
    "#FFA7AC",
    "#A7CB83",
    "#E6B960",
    "#72CCE9",
    "#F0AADD",
    "#72D0BA",
    "#C8D5DF",

    [256] = "#A5B2BC",
    [257] = "#1B282C",
    [258] = "#A5B2BC", /* default foreground colour */
    [259] = "#1E1517", /* default background colour */
};

/*
 * Default colors (colorname index)
 * foreground, background, cursor, reverse cursor
 */
unsigned int defaultfg = 258;
unsigned int defaultbg = 259;
unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;

/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
    /* 8 normal colors */
    "#D8D6D5",
    "#A13F37",
    "#467118",
    "#805C00",
    "#006E89",
    "#90437A",
    "#007652",
    "#9E7876",

    /* 8 bright colors */
    "#B0AEAD",
    "#C9675F",
    "#6E9940",
    "#A88428",
    "#2896B1",
    "#B86BA2",
    "#289E7A",
    "#8B605E",

    [256] = "#815654",
    [257] = "#BBC9D7",
    [258] = "#815654", /* default foreground colour */
    [259] = "#FEEEEE", /* default background colour */
};

/*
 * Default colors (colorname index)
 * foreground, background, cursor, reverse cursor
 */
unsigned int defaultfg = 258;
unsigned int defaultbg = 259;
unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;

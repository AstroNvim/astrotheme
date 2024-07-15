/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
    /* 8 normal colors */
    "#E1E2E4",
    "#990000",
    "#345E00",
    "#7300B8",
    "#00508A",
    "#9E007C",
    "#00615B",
    "#737474",

    /* 8 bright colors */
    "#B9BABC",
    "#C12828",
    "#5C8628",
    "#9B28E0",
    "#2878B2",
    "#C628A4",
    "#288983",
    "#595959",

    [256] = "#4F4F4F",
    [257] = "#E7E9EB",
    [258] = "#4F4F4F", /* default foreground colour */
    [259] = "#F7F8F8", /* default background colour */
};

/*
 * Default colors (colorname index)
 * foreground, background, cursor, reverse cursor
 */
unsigned int defaultfg = 258;
unsigned int defaultbg = 259;
unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;

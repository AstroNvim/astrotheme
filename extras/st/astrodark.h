/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
    /* 8 normal colors */
    "#111317",
    "#FF838B",
    "#87C05F",
    "#DFAB25",
    "#5EB7FF",
    "#DD97F1",
    "#4AC2B8",
    "#9B9FA9",

    /* 8 bright colors */
    "#34363A",
    "#FFA6AE",
    "#AAE382",
    "#FFCE48",
    "#81DAFF",
    "#FFBAFF",
    "#6DE5DB",
    "#D0D3DE",

    [256] = "#ADB0BB",
    [257] = "#26343F",
    [258] = "#ADB0BB", /* default foreground colour */
    [259] = "#1A1D23", /* default background colour */
};

/*
 * Default colors (colorname index)
 * foreground, background, cursor, reverse cursor
 */
unsigned int defaultfg = 258;
unsigned int defaultbg = 259;
unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;

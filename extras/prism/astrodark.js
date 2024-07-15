module.exports =  {
  plain: {
    color: "#ADB0BB",
    backgroundColor: "#1A1D23",
  },
  styles: [
    {
      types: ["prolog", "builtin"],
      style: {
        color: "#FF838B",
      },
    },
    {
      types: ["function", "symbol", "tag"],
      style: {
        color: "#5EB7FF",
      },
    },
    {
      types: ["punctuation", "variable"],
      style: {
        color: "#ADB0BB",
      },
    },
    {
      types: ["string", "char", "selector"],
      style: {
        color: "#87C05F",
      },
    },
    {
      types: ["keyword", "operator"],
      style: {
        color: "#DD97F1",
      },
    },
    {
      types: ["constant", "boolean", "attr-name"],
      style: {
        color: "#DFAB25",
      },
    },
    {
      types: ["comment"],
      style: {
        color: "#696C76",
        fontStyle: "italic",
      },
    },
  ],
};

module.exports =  {
  plain: {
    color: "#4F4F4F",
    backgroundColor: "#F7F8F8",
  },
  styles: [
    {
      types: ["prolog", "builtin"],
      style: {
        color: "#990000",
      },
    },
    {
      types: ["function", "symbol", "tag"],
      style: {
        color: "#00508A",
      },
    },
    {
      types: ["punctuation", "variable"],
      style: {
        color: "#4F4F4F",
      },
    },
    {
      types: ["string", "char", "selector"],
      style: {
        color: "#345E00",
      },
    },
    {
      types: ["keyword", "operator"],
      style: {
        color: "#9E007C",
      },
    },
    {
      types: ["constant", "boolean", "attr-name"],
      style: {
        color: "#7300B8",
      },
    },
    {
      types: ["comment"],
      style: {
        color: "#8B9297",
        fontStyle: "italic",
      },
    },
  ],
};

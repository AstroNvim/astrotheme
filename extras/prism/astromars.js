module.exports =  {
  plain: {
    color: "#A5B2BC",
    backgroundColor: "#1E1517",
  },
  styles: [
    {
      types: ["prolog", "builtin"],
      style: {
        color: "#DF8489",
      },
    },
    {
      types: ["function", "symbol", "tag"],
      style: {
        color: "#4FA9C6",
      },
    },
    {
      types: ["punctuation", "variable"],
      style: {
        color: "#A5B2BC",
      },
    },
    {
      types: ["string", "char", "selector"],
      style: {
        color: "#84A860",
      },
    },
    {
      types: ["keyword", "operator"],
      style: {
        color: "#CD87BA",
      },
    },
    {
      types: ["constant", "boolean", "attr-name"],
      style: {
        color: "#C3963D",
      },
    },
    {
      types: ["comment"],
      style: {
        color: "#63646A",
        fontStyle: "italic",
      },
    },
  ],
};

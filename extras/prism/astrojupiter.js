module.exports =  {
  plain: {
    color: "#815654",
    backgroundColor: "#FEEEEE",
  },
  styles: [
    {
      types: ["prolog", "builtin"],
      style: {
        color: "#A13F37",
      },
    },
    {
      types: ["function", "symbol", "tag"],
      style: {
        color: "#006E89",
      },
    },
    {
      types: ["punctuation", "variable"],
      style: {
        color: "#815654",
      },
    },
    {
      types: ["string", "char", "selector"],
      style: {
        color: "#467118",
      },
    },
    {
      types: ["keyword", "operator"],
      style: {
        color: "#90437A",
      },
    },
    {
      types: ["constant", "boolean", "attr-name"],
      style: {
        color: "#805C00",
      },
    },
    {
      types: ["comment"],
      style: {
        color: "#937C7A",
        fontStyle: "italic",
      },
    },
  ],
};

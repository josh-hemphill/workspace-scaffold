module.exports = {
  root: true,
  env: {
    node: true
  },
  extends: [
    "prettier",
    "standard",
    "eslint:recommended",
    "plugin:vue/recommended",
    "plugin:nuxt/recommended",
    "plugin:prettier/recommended",
    "prettier/vue",
    "prettier/standard"
  ],
  plugins: [
    "vue",
    "prettier",
  ],
  rules: {
    "vue/component-name-in-template-casing": ["error", "PascalCase"],
    "no-console": process.env.NODE_ENV === "production" ? "error" : "warn",
    "no-debugger": process.env.NODE_ENV === "production" ? "error" : "warn",
    "quotes": ["warn", "single", { "avoidEscape": true }],
	"indent": ["warn", "tab"],
	"vue/no-v-html": ["off"]
  },
  globals: {
    $nuxt: true
  },
  parserOptions: {
    ecmaVersion: 8,
    parser: "babel-eslint"
  }
}

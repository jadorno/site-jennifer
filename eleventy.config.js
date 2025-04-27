const md = require('markdown-it')
const anchor = require('markdown-it-anchor')

module.exports = async function(eleventyConfig) {
  let mdOptions = {
    html: true
  }
  let anchorOptions = {
    level: 2,
    permalink: undefined
  }
  eleventyConfig.setLibrary("md", md(mdOptions).use(anchor, anchorOptions))
  eleventyConfig.addPassthroughCopy({ "assets": "assets" });
  eleventyConfig.addPassthroughCopy({ 
    "node_modules/bootstrap/dist/js": "assets/js/bootstrap" 
  });
  eleventyConfig.setBrowserSyncConfig({
		files: './build/assets/css/**/*.css'
	});
  return {
    dir: {
      output: "build",
      input: "_pages",
      includes: "../_includes",
      data: "../_data"
    },
    templateFormats: ["njk", "md"]
  };
};

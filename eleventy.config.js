const md = require('markdown-it')
const anchor = require('markdown-it-anchor')

module.exports = (eleventyConfig) => {
  let mdOptions = {
    html: true
  }
  let anchorOptions = {
    level: 2,
    permalink: anchor.permalink.headerLink({ 
      safariReaderFix: true 
    })
  }
  eleventyConfig.setLibrary("md", md(mdOptions).use(anchor, anchorOptions))
  eleventyConfig.addPassthroughCopy({ "assets": "assets" });
  eleventyConfig.addPassthroughCopy({ 
    "node_modules/bootstrap/dist/js": "assets/js/bootstrap" 
  });
  eleventyConfig.addWatchTarget("./assets/");
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

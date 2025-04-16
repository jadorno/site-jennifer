module.exports = (eleventyConfig) => {
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

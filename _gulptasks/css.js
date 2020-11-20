import {
	src,
	dest
} from "gulp";
import sass from "gulp-sass";
import concat from "gulp-concat";
import sourcemap from "gulp-sourcemaps";
import cssnano from "cssnano";
import postcss from "gulp-postcss";
import cssSort from "css-declaration-sorter";
var tailwindcss = require("tailwindcss");
import autoprefixer from "autoprefixer";

export const sassTask = () => {
	return src([
			"src/components/_core/*.sass",
			"src/components/_global/*.sass",
			"src/components/!(_tailwind)/*.sass", "src/components/!(_tailwind)/**/**/*.sass"
		])
		.pipe(sourcemap.init())
		.pipe(concat("main.min.sass"))
		.pipe(sass().on("error", sass.logError))
		.pipe(
			postcss([
				require('tailwindcss'),
				autoprefixer({
					browsers: ["last 4 version", "IE 9"],
					cascade: false
				}),
				cssnano(),
				cssSort({
					order: "concentric-css"
				}) 
			])
		)
		.pipe(sourcemap.write("."))
		.pipe(dest("dist/css"));
};

module.exports = sassTask;
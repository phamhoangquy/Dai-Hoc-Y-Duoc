import {
	src,
	dest
} from "gulp";
import sass from "gulp-sass";
import del from "del";
import concat from "gulp-concat";
import cssnano from "cssnano";
import plumber from "gulp-plumber";
import merge from "merge-stream";

var postcss = require("gulp-postcss");
import cssSort from "css-declaration-sorter";
var tailwindcss = require("tailwindcss");
import autoprefixer from "autoprefixer";
// Get base file form node module
export const tw_TaskSass = () => {
	return src(["src/components/_tailwind/base.sass",
			"src/components/_tailwind/preflight.sass",
			"src/components/_tailwind/elements/*.sass",
			"src/components/_tailwind/import.sass",
			"src/components/**/*.sass",
			"src/components/**/**/*.sass",
			"src/components/**/**/**/*.sass",
		], {
			allowEmpty: true
		})
		.pipe(plumber())
		.pipe(concat("tailwind.min.sass"))
		.pipe(sass().on("error", sass.logError))
		.pipe(dest("src/tailwind"))
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
		.pipe(concat("main.min.css"))
		.pipe(dest("dist/css"))

};

module.exports.default = tw_TaskSass;

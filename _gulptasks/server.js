import { watch, series, parallel } from "gulp";
import bSync from "browser-sync";
import jsCore from "./core-js";
import jsTask from "./script";
import pugTask from "./html";
import cssCore from "./core-css";
import sassTask from "./css";
import { copyImage } from "./copy";
import { cleanImage } from "./clean";
import { tw_TaskSass } from "./tw_TaskSass";


export const server = () => {
    bSync.init({
        notify: true,
        server: {
            baseDir: "dist"
        },
        port: 8000
    });

    watch(["src/js/*.js"], series(jsTask));

    watch(["src/**/**.pug"], series(pugTask));

	watch(["tailwind.config.js", , "src/components/**/*.sass", "src/components/**/**/*.sass", "src/components/_tailwind/*.sass", "src/components/_tailwind/**/*.sass"], series(tw_TaskSass));


    watch(
        ["src/img/**/**.{svg,png,jpg,speg,gif}"],
        series(cleanImage, copyImage)
    );

    watch(
        ["src/_plugins/**/**.css", "src/_plugins/**/**.js", "config.json"],
        parallel(jsCore, cssCore)
    );

	watch(["dist"]).on("change", bSync.reload);
	watch(["src/tailwind"]).on("change", bSync.reload);
};

module.exports = server;
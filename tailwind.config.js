module.exports = {
	experimental: {
		applyComplexClasses: true,
	},
	theme: {

		//breakkpoint
		screens: {
			sm: {
				min: "576px"
			},

			md: {
				min: "768px"
			},

			lg: {
				min: "1024.1px"
			},

			xl: {
				min: "1280px"
			}
		},

		inset: {
			"0": "0",
			"50": "50%",
			"100": "100%"
		},
		fontSize: {
			"48": "3rem",
			"44": "2.75rem",
			"40": "2.5rem",
			"36": "2.25rem",
			"32": "2rem",
			"30": "1.875rem",
			"28": "1.75rem",
			"26": "1.625rem",
			"24": "1.5rem",
			"22": "1.375rem",
			"20": "1.25rem",
			"18": "1.125rem",
			"16": "1rem",
			"15": "0.9375rem",
			"14": "0.875rem",
			"13": "0.8125rem",
			"12": "0.75rem",
			"11": "0.68‬rem"
		},
		colors: {
			primary: "#e52322",
			main: "#333333",
			azure: "#6bc0e7",
			yl: "#fbdb00 ",
			blue: {
				'1': "#27519e",
				'2': "#3159a3 ",
				'3': "#79c5e8"
			},
			grey: {
				'1': "#f5faff",
				'2': "#666666 ",
				'3': "#999999",
				'4': "#f1f1f1",
				'5': "#f5f5f5",
				'6': "#f7f7f7",
				'7': "#f8f8f8"
			},
			black: "#000000",
			white: "#ffffff"
		},
		extend: {
			spacing: {
				'14': '3.5rem',
				'15': '3.75rem',
				'18': '4.5rem',
				'22': '5.5rem',
				'26': '6.5rem',
				'28': '7rem',
				'30': '7.5rem',
			}
		},
	},

	corePlugins: [
		'overflow',
		'fontStyle',
		'display',
		'textAlign',
		'textTransform',
		'position',
		'pointerEvents',
		'flexDirection',
		'width',
		'height',
		'flexWrap',
		'justifyContent',
		'alignItems',
		'padding',
		'margin',
		'backgroundColor',
		'fontWeight',
		'opacity',
		'textColor',
		'textDecoration',
		'cursor',
		'zIndex',
		'fontSize',
		'cursor',
		'textDecoration',
		'translate',
		'lineHeight',
		'whitespace',
		'borderRadius',
		'inset'
	],

	variants: {
		position: [],
		inset: [],
		boxShadow: [],
		listStyleType: [],
		flexWrap: [],
		justifyContent: [],
		alignItems: [],
		padding: [],
		margin: [],
		space: [],
		backgroundColor: [],
		boxShadow: [],
		fontWeight: [],
		opacity: [],
		textColor: [],
		textDecoration: [],
		borderRadius: [],
		cursor: [],
		zIndex: [],
		listStyleType: [],
		fontSize: [],
		cursor: [],
		textDecoration: [],
		translate: [],
		transitionDuration: [],
		transitionProperty: [],
		transitionTimingFunction: [],
		transformOrigin: [],
		lineHeight: [],
		height: [],
		whitespace: [],

	},
	plugins: [
		function ({
			addUtilities,
			config
		}) {
			addUtilities({
				//Translate tranform
				".translate-50": {
					transform: "translate(-50%,-50%)"
				},
				".translate-x-50": {
					transform: "translateX(-50%)"
				},
				".translate-y-50": {
					transform: "translateY(-50%)"
				},
				".translate-x-100": {
					transform: "translateX(-100%)"
				},
				".translate-y-100": {
					transform: "translateY(-100%)"
				},
				".translate-0": {
					transform: "translate(0)"
				},
				//Transition
				".transition": {
					transition: ".3s all ease-in-out"
				},
				".transition-opacity": {
					transition: "opacity .3s ease-in-out"
				},
				".transition-cubic": {
					transition: "all .8s cubic-bezier(.68,-.55,.265,1.55)"
				},
				".transition-transform": {
					transition: "transform .3s ease-in-out"
				}
				// before after variable
			});
		}
	]
}

#!/bin/bash
npm i -D eslint prettier eslint-plugin-prettier eslint-config-standard \
eslint-config-prettier eslint-plugin-promise eslint-plugin-node \
eslint-plugin-standard eslint-plugin-jest

source "./.tmpInstall/.lib.sh"
TYPE=""

browserDev="babel-eslint eslint-loader eslint-plugin-import eslint-plugin-vue"
browser=""
vue=""
vueDev=""
nuxt=""
nuxtDev=""
serverSide="axios express cors jsonwebtoken"

case `select_opt "Node" "Vue" "Nuxt" ""` in
    0)
		npm i $serverSide
	;;
    1) 
		npm i -D $browserDev $vueDev
		npm i $browser $vue
	;;
    2) 
		npm i -D $browserDev $nuxtDev
		npm i $browser $nuxt
	;;
esac



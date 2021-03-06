import Vue from 'vue'

var productMiniature = Vue.extend({
  template: '#product-miniature-template',
  props: ['product'],
  data: function () {
    return {
      imgBig: this.product.cover.medium.url,
      onHover: false,
      zoomStyle: {},
      mainImgStyle: {
        opacity: 1
      }
    }
  },
  methods: {
    changeImg: function (event) {
      if (event) {
        this.imgBig = event.target.dataset.bigImg
      }
    },
    moveBG: function (event) {
      let conatiner = event.target
      let elementZoom = ''

      let e = {
        w: elementZoom.offsetWidth,
        h: elementZoom.offsetHeight
      }

      let c = {
        x: Math.round((event.clientX - (window.scrollX)) / (e.w / 100)),
        y: Math.round((event.clientY - (window.scrollY)) / (e.h / 100))
      }
      console.log(c.x, c.y)

      this.zoomStyle.backgroundPosition = c.x + '% ' + c.y + '%'
    }
  }
})

export default productMiniature

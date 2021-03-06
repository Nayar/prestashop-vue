import Vue from 'vue'
import data from './data'
import getSelected from './methods/getSelected'

var productsLimit = Vue.extend({
  template: `<div>
							<transition-group appear name="list" tag="div" class="products" mode="out-in">
                <div is="product-miniature" v-for="product in selected" :product='product' :key='product.id'></div>
							</transition-group>
              <button v-if="indexes.start !== 0" class="prev btn btn default" @click="prev">Prev</button>
              <button v-if="indexes.end !== data.length" class="next btn btn default" @click="next">Next</button>
            </div>`,
  props: ['data'],
  data: data,
  methods: {
    getSelected,
    next() {
      if (this.indexes.end < this.data.length) {
        this.indexes.end = this.indexes.end + 1
        this.indexes.start = this.indexes.start + 1

        this.getSelected()
      }
    },
    prev() {
      if (this.indexes.start !== 0) {
        this.indexes.end = this.indexes.end - 1
        this.indexes.start = this.indexes.start - 1
        this.getSelected()
      }
    }
  },
  created: function () {
    this.getSelected()
  }
})

export default productsLimit

let oldProductData = {};

export default function() {
  $(document).on("click", "[data-link-action='quickview']", event => {
    this.$nextTick(function() {
      this.themeLoaderShow = true;
    });

    let data = {
      action: "quickview",
      id_product: event.target.dataset.idProduct,
      id_product_attribute: event.target.dataset.idProductAttribute
    };

    oldProductData = Object.assign({}, this.modules.productPageData);

    $.post(prestashop.urls.pages.product, data, null, "json")
      .then(resp => {
        this.$nextTick(function() {
          this.modules.productPageData = resp.product;
          this.themeLoaderShow = false;
          this.$root.$emit(
            "bv::show::modal",
            "quickviewModal",
            "#focusThisOnClose"
          );
        });
      })
      .fail(resp => {
        prestashop.emit("handleError", {
          eventType: "clickQuickView",
          resp: resp
        });
      });
  });

  this.$root.$on("bv::hide::modal", "quickviewModal", function() {
    console.log("close");
  });
}

export function onCloseQuickView() {
  console.log("close quickview");
  this.$nextTick(function() {
    this.modules.productPageData = Object.assign({}, oldProductData);
  });
}

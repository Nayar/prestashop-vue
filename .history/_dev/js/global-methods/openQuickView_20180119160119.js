export default function() {
  $(document).on("click", "[data-link-action='quickview']", event => {
    console.log(event.target);
    this.$nextTick(function() {
      this.themeLoaderShow = true;
    });

    let data = {
      action: "quickview",
      id_product: event.target.dataset.idProduct,
      id_product_attribute: event.target.dataset.idProductAttribute
    };
    $.post(prestashop.urls.pages.product, data, null, "json")
      .then(resp => {
        this.$nextTick(function() {
          this.modules.productPageData = resp.product;
          this.themeLoaderShow = false;
          this.$root.$emit("bv::show::modal", "modal1", "#focusThisOnClose");

          // console.log(this.modules.productPageData);
          console.log(this.$root.$emit);
        });
      })
      .fail(resp => {
        prestashop.emit("handleError", {
          eventType: "clickQuickView",
          resp: resp
        });
      });
  });
}

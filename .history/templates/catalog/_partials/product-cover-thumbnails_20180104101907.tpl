{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
 {if isset($smarty.request["ajax"]) }
  <div id="ajax-product-images" data-ajax-products="{$product|@json_encode}"></div>
  {return}
 {/if}

<div class="images-container position-relative"
  v-bind:style="{literal}{paddingLeft: modules.productPageData.cover.small.width + 'px'}{/literal}">
  {block name='product_images'}
    <div class="product-images list-unstyled"
        v-bind:style="{literal}{maxWidth: modules.productPageData.cover.small.width + 'px'}{/literal}">
      <div v-bar>
        <div>
          <img v-for="image in modules.productPageData.images" class="img-fluid" :src="image.small.url"
            :alt="image.legend" :title="image.legend"
            :width="image.small.width" itemprop="image">
        </div>
      </div>
    </div>
  {/block}

  {block name='product_cover'}
    <div class="product-cover">
      <img class="img-fluid" :src="modules.productPageData.cover.bySize.large_default.url"
      :alt="modules.productPageData.cover.legend" :title="modules.productPageData.cover.legend"
      @mouseover="changeProductCoverImage"
      itemprop="image">
    </div>
  {/block}
</div>

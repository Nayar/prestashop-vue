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
{block name='cart_detailed'}
  <div class="cart-overview js-cart"
       data-refresh-url="{url entity='cart' params=['ajax' => 1, 'action' => 'refresh']}">
    <div class="body">
      <b-list-group>
        {* <transition-group name="fade" mode="out-in" appear> *}
          <b-list-group-item class="cart-item" v-for="product in modules.blockcart.products" :key="Date.now() + Math.random()">
            {include file='checkout/_partials/cart-detailed-product-line.tpl'}
          </b-list-group-item>
        {* </transition-group> *}
      </b-list-group>
    </div>
  </div>
{/block}

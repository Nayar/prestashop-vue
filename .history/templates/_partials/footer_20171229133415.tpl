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
 <b-container>
  {block name='hook_footer_before'}
    {hook h='displayFooterBefore'}
  {/block}

  {block name='hook_footer'}
    {hook h='displayFooter'}
  {/block}

  {block name='hook_footer_after'}
    {hook h='displayFooterAfter'}
  {/block}

  <div class="copyright">
    {block name='copyright_link'}
      <a class="_blank" href="http://www.prestashop.com" target="_blank">
        {l s='%copyright% %year% - Ecommerce software by %prestashop%'
        sprintf=['%prestashop%' => 'PrestaShop™', '%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme.Global'}
      </a>
    {/block}
  </div>
  <div class="progress  fixed-top" >
    <div class="progress-bar progress-bar-striped bg-danger progress-bar-animated" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
  </div>
</b-container>
<div>
{* <b-modal ref="blokcart" lazy size="lg">
  <div v-html="blockcart.modalData">
  </div>
  <div slot="modal-footer" class="w-100 d-flex justify-content-end">
    <b-btn size="sm" variant="primary" href="{$urls.pages.cart}">
      {l s='Proceed to checkout' d='Shop.Theme.Actions'}
    </b-btn>
  </div>
</b-modal> *}
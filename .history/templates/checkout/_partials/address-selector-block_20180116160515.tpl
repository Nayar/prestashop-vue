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
{block name='address_selector_blocks'}
  {foreach $addresses as $address}
    <article id="{$name|classname}-address-{$address.id}" class="address-item bg-light border rounded">
      <header class="h6">
        {$address.alias}
      </header>

      <label class="radio-block">
        <label class="custom-control custom-radio">
            <input
              class="custom-control-input"
              type="radio"
              value="{$address.id}"
              name="{$name}"
              {if $address.id == $selected}checked{/if}
            >
          <span aria-hidden="true" class="custom-control-indicator"></span>
          <span class="custom-control-description">
            {$address.formatted nofilter}
          </span>
        </label>
      </label>

      <footer >
        {if $interactive}
          <a  data-link-action="edit-address"
            class="btn btn-sm btn-secondary"
            href="{url entity='order' params=['id_address' => $address.id, 'editAddress' => $type, 'token' => $token]}">
            <i class="far fa-edit"></i>
            <span class="sr-only">{l s='Edit' d='Shop.Theme.Actions'}</span>
          </a>
          <a  data-link-action="delete-address"
            class="btn btn-sm btn-secondary"
            href="{url entity='order' params=['id_address' => $address.id, 'deleteAddress' => true, 'token' => $token]}">
            <i class="far fa-trash-alt"></i>
            <span class="sr-only">{l s='Delete' d='Shop.Theme.Actions'}</span>
          </a>
        {/if}
      </footer>
    </article>
  {/foreach}
  {if $interactive}
    <p>
      <button class="ps-hidden-by-js" type="submit">{l s='Save' d='Shop.Theme.Actions'}</button>
    </p>
  {/if}
{/block}

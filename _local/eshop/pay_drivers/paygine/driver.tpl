%%include_language "_local/eshop/pay_drivers/paygine/driver.lng"%%

<!--#set var="settings_form" value="
<tr>
    <td colspan="2"><hr /></td>
</tr>
<tr>
    <td>%%paygine_sector_id%%</td>
    <td><input type="text" name="paygine_sector_id" class="field" value="##paygine_sector_id##" placeholder="%%paygine_sector_id_help%%"  /></td>
</tr>
<tr>
    <td>%%paygine_password%%</td>
    <td><input type="text" name="paygine_password" class="field" value="##paygine_password##" placeholder="%%paygine_password_help%%" /></td>
</tr>
<tr>
    <td>%%paygine_test_mode%%</td>
    <td>
        <label><input type="radio" name="paygine_test_mode" value="1"##IF(paygine_test_mode == '1')## checked="checked"##ENDIF## /> %%paygine_test_mode_yes%%</label>
        <label><input type="radio" name="paygine_test_mode" value="0"##IF(paygine_test_mode == '0')## checked="checked"##ENDIF## /> %%paygine_test_mode_no%%</label>
    </td>
</tr>
"-->

<!--#set var="checkout_form" value="
    <form name="paymentformpaygine" action="##process_url##" method="post">
    ##hiddens##
    ##if(_button_html=="1")##
    ##button##
    ##else##
    <input type="submit" name="sbmt" class="btn" value="      ##button_name##      " ##disabled##>
    ##endif##
    </form>
"-->

<!--#set var="pay_form" value="
    <form name="paymentform" action="##url##" method="post">
    <input type="hidden" name="sector" value="##paygine_sector_id##">
    <input type="hidden" name="id" value="##paygine_order_id##">
    <input type="hidden" name="signature" value="##paygine_signature##">
    </form>
    <script type="text/javascript">
            document.paymentform.submit();
    </script>
"-->

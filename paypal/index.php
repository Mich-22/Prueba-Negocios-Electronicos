<?php
/*
    * Cart page - Shortcut Flow.
*/
    session_start();
    $rootPath = "";
    include_once('api/Config/Config.php');
    include_once('api/Config/Sample.php');
    include('templates/header.php');

    $baseUrl = str_replace("index.php", "", URL['current']);
?>

<!-- HTML Content -->
<div class="row-fluid">
    <!-- Left Section -->
    <div class="col-md-2"></div>
    <div class="col-md-3" id="leftSection"><br><br><br><br><br><br>
        <div class="card">
            <img class="card-img-top img-responsive" src="<?= $rootPath ?>../images/g0.jpg">
            <div class="card-body"><br>
                <h2 class="text-center">Invitation to "Mi Boda"</h2>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Characteristics:</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Invitations</td>
                            <td>Maximium 500</td>
                        </tr>
                        <tr>
                            <td>Delivery time</td>
                            <td>3 days or 1 week</td>
                        </tr>
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- Middle Section -->
    <div class="col-md-4"><br><br><br><br><br><br>
        <h1 class="text-center">Pricing Details</h1>
        <hr>
        <form class="form-horizontal">
            <!-- Cart Details -->
            <div class="form-group">
                <label for="camera_amount" class="col-sm-5 control-label">Wedding</label>
                <div class="col-sm-7">
                    <input class="form-control"
                           type="text"
                           id="camera_amount"
                           name="camera_amount"
                           value="<?= SampleCart['item_amt'] ?>"
                           readonly>
                </div>
            </div>
            <div class="form-group">
                <label for="tax_amt" class="col-sm-5 control-label">Tax</label>
                <div class="col-sm-7">
                    <input class="form-control"
                           type="text"
                           id="tax_amt"
                           name="tax_amt"
                           value="<?= SampleCart['tax_amt'] ?>"
                           readonly>
                </div>
            </div>
            <div class="form-group">
                <label for="insurance_fee" class="col-sm-5 control-label">Insurance</label>
                <div class="col-sm-7">
                    <input class="form-control"
                           type="text"
                           id="insurance_fee"
                           name="insurance_fee"
                           value="<?= SampleCart['insurance_fee'] ?>"
                           readonly>
                </div>
            </div>
            <div class="form-group">
                <label for="handling_fee" class="col-sm-5 control-label">Handling Fee</label>
                <div class="col-sm-7">
                    <input class="form-control"
                           type="text"
                           id="handling_fee"
                           name="handling_fee"
                           value="<?= SampleCart['handling_fee'] ?>"
                           readonly>
                </div>
            </div>
            <div class="form-group">
                <label for="shipping_amt" class="col-sm-5 control-label">Estimated Shipping</label>
                <div class="col-sm-7">
                    <input class="form-control"
                           type="text"
                           id="shipping_amt"
                           name="shipping_amt"
                           value="<?= SampleCart['shipping_amt'] ?>"
                           readonly>
                </div>
            </div>
            <div class="form-group">
                <label for="shipping_discount" class="col-sm-5 control-label">Shipping Discount</label>
                <div class="col-sm-7">
                    <input class="form-control"
                           type="text"
                           id="shipping_discount"
                           name="shipping_discount"
                           value="<?= SampleCart['shipping_discount'] ?>"
                           readonly>
                </div>
            </div>
            <div class="form-group">
                <label for="total_amt" class="col-sm-5 control-label">Total Amount</label>
                <div class="col-sm-7">
                    <input class="form-control"
                           type="text"
                           id="total_amt"
                           name="total_amt"
                           value="<?= SampleCart['total_amt'] ?>"
                           readonly>
                </div>
            </div>
            <div class="form-group">
                <label for="currency_Code" class="col-sm-5 control-label">Currency</label>
                <div class="col-sm-7">
                    <input class="form-control"
                           type="text"
                           id="currency_Code"
                           name="currency_Code"
                           value="USD"
                           readonly>
                </div>
            </div>
            <hr>

            <!-- Checkout Options -->
            <div class="form-group">
                <div class="col-sm-offset-5 col-sm-7">
                    <!-- Container for PayPal Shortcut Checkout -->
                    <div id="paypalCheckoutContainer"></div>

                    <!-- Container for PayPal Mark Redirect -->
                    <div id="paypalMarkRedirect">
                        <h4 class="text-center">OR</h4>
                        <a class="btn btn-success btn-block" href="<?= $rootPath ?>pages/shipping.php" role="button">
                            <h2>Proceed to Checkout</h2>
                        </a>
                    </div>
                </div>
            </div>
        </form>
    </div>

    <!-- Right Section -->
    
<!-- Javascript Import -->
<script src="https://www.paypal.com/sdk/js?client-id=sb&intent=capture&vault=false&commit=true<?php echo isset($_GET['buyer-country']) ? "&buyer-country=" . $_GET['buyer-country'] : "" ?>"></script>
<script src="<?= $rootPath ?>js/config.js"></script>

<!-- PayPal In-Context Checkout script -->
<script type="text/javascript">

    paypal.Buttons({

        // Set your environment
        env: '<?= PAYPAL_ENVIRONMENT ?>',

        // Set style of buttons
        style: {
            layout: 'vertical',   // horizontal | vertical
            size:   'responsive',   // medium | large | responsive
            shape:  'pill',         // pill | rect
            color:  'gold',         // gold | blue | silver | black,
            fundingicons: false,    // true | false,
            tagline: false          // true | false,
        },

        // Wait for the PayPal button to be clicked
        createOrder: function() {
            let formData = new FormData();
            formData.append('item_amt', document.getElementById("camera_amount").value);
            formData.append('tax_amt', document.getElementById("tax_amt").value);
            formData.append('handling_fee', document.getElementById("handling_fee").value);
            formData.append('insurance_fee', document.getElementById("insurance_fee").value);
            formData.append('shipping_amt', document.getElementById("shipping_amt").value);
            formData.append('shipping_discount', document.getElementById("shipping_discount").value);
            formData.append('total_amt', document.getElementById("total_amt").value);
            formData.append('currency', document.getElementById("currency_Code").value);
            formData.append('return_url',  '<?= $baseUrl.URL["redirectUrls"]["returnUrl"]?>' + '?commit=true');
            formData.append('cancel_url', '<?= $baseUrl.URL["redirectUrls"]["cancelUrl"]?>');

            return fetch(
                '<?= $rootPath.URL['services']['orderCreate']?>',
                {
                    method: 'POST',
                    body: formData
                }
            ).then(function(response) {
                return response.json();
            }).then(function(resJson) {
                console.log('Order ID: '+ resJson.data.id);
                return resJson.data.id;
            });
        },

        // Wait for the payment to be authorized by the customer
        onApprove: function(data, actions) {
            return fetch(
                '<?= $rootPath.URL['services']['orderGet'] ?>',
                {
                    method: 'GET'
                }
            ).then(function(res) {
                return res.json();
            }).then(function(res) {
                window.location.href = 'pages/success.php';
            });
        }

    }).render('#paypalCheckoutContainer');

</script>
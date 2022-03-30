// initialize PayPal
const paypal = require("paypal-rest-sdk");

paypal.configure({
    'mode': 'sandbox', //sandbox or live
    'client_id': 'AWyEjbkU5BHmD8943kthnWWqoLQBhBe3Vw0pKCZcGE8WOyfSj2O1qkxHVz5q50Ii5zsVmzkMF4vDO9EY',
    'client_secret': 'EAFztE0kvVwPXs53U-9YWqa-wvKznz8kZmEa4FVG4B-1u6_VnDldHmnZp12z3CItZ2093a3qh1pb-KXH'
  });

exports.payPalInc = (req,res)=>{
    var qty = 1;
    var amount = req.body.amount;
    var total = qty*amount;
    req.session.total = total;
    console.log(req.session.total);
        const create_payment_json = {
            "intent": "sale",
            "payer": {
                "payment_method": "paypal"
            },
            "redirect_urls": {
                "return_url": "https://pamojaapis.herokuapp.com/api/success",
                "cancel_url": "https://pamojaapis.herokuapp.com/api/cancel"
            },
            "transactions": [{
                "item_list": {
                    "items": [{
                        "name": "Food",
                        "sku": "001",
                        "price": amount,
                        "currency": "USD",
                        "quantity": qty
                    }]
                },
                "amount": {
                    "currency": "USD",
                    "total": total
                },
                "description": "This is the payment description."
            }]
        };
         
         
        paypal.payment.create(create_payment_json, function (error, payment) {
            if (error) {
                throw error;
            } else {
                for(i=0; i < payment.links.length; i++){
                    if(payment.links[i].rel == "approval_url")
                    res.send(JSON.stringify(payment.links[i].href));
                    console.log("link ni: ",payment.links[i].href);
                }
                console.log("Create Payment Response");
                console.log(payment);
    
                // req.session.amount;
            }
        });
    
}

exports.payPalSucces = (req,res)=>{
    if(req.session.total){
        console.log( "Oi Mzigo huu",req.session.total);
    var payerId = req.query.PayerID;
    var paymentId  = req.query.paymentId;
    // const{amount} = req.session;

    const exe_pay_json = {
        "payer_id":payerId,
        "transactions":[{
            "amount":{
                "currency":"USD",
                "total":req.session.total,
            }
        }]
    };

    paypal.payment.execute(paymentId,exe_pay_json,(err,payment)=>{
        if(err){
            console.log(err.message);
        }else{
            console.log("Get Payment Response");
            console.log(JSON.stringify(payment));
        }
    }); // End Of Succeffuly page

    res.send("Successed")
}
};

module.exports;
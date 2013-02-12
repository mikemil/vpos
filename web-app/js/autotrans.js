 (function () {

  console.log("in siaf...");

  var vpos = {

    // selectors:  ['#userid', '#transClassName','#locationNumber', 'pswd', '#terminalName', '#associateSpecassociateNumber', 
    //                   '#lineItemsSpecs-sku-0', 'lineItemSpecs-quantity-0', '#tenderSpecs-tenderCode-0', '#tenderSpecs-cardToken-0',
    //                   '#tenderSpecs-cardType-0', '#tenderSpecs-cardSubType-0'];
    // defaultVals: ['102', 'com.jda.portfolio.pos.base.transaction.RetailTransaction', '8001', '102', '20', '102', '210',
    //                    '1', 'VI', 'abababababab', '100', '1001'];                  

    setDefaults: function setDefaults()  {
        console.log('setting the default form values...');
        // for (var i = 0 i < selectors.length; i++) {
        //     console.log('setting '+selectors[i]+ ' to '+defaultVals[i]);
        //     $(selectors[i]).val(defaultVals);
        // };
        $('#userid').val('102');
        $('#transClassName').val('com.jda.portfolio.pos.base.transaction.RetailTransaction');
        $('#locationNumber').val('8001');
        $('#pswd').val('102');
        $('#terminalName').val('20');
        $('#associateSpecassociateNumber').val('102');
        $('#lineItemSpecs-sku-0').val('210');
        $('#lineItemSpecs-quantity-0').val('1');
        $('#tenderSpecs-tenderCode-0').val('VI');
        $('#tenderSpecs-cardToken-0').val('ababababababab');
        $('#tenderSpecs-cardType-0').val('100');
        $('#tenderSpecs-cardSubType-0').val('1001');
    },

    setODDefaults: function setODDefaults()   {
        // office depot settings
        $('#userid').val('102');
        $('#pswd').val('Password1');
        $('#transClassName').val('com.jda.portfolio.pos.base.transaction.RetailTransaction');
        $('#locationNumber').val('409');
        $('#terminalName').val('1');
        $('#associateSpecassociateNumber').val('102');
        $('#lineItemSpecs-sku-0').val('163061');
        $('#lineItemSpecs-quantity-0').val('2');
        $('#tenderSpecs-tenderCode-0').val('DC');
        $('#tenderSpecs-cardToken-0').val('ababababababab');
        $('#tenderSpecs-cardType-0').val('100');
        $('#tenderSpecs-cardSubType-0').val('1001');
    },

    addItemRow:  function addItemRow (event) {
      console.log('addItemRow called...');
      event.preventDefault();

      // tag name regex text[0].text
      var regex1 = /^(.*\[)(\d)+(\].*)/i;
      
      // tag id regex name-0
      var regex = /^(.*)(\d)+$/i;
      var cloneIndex = $(".lineitem").length;

      $('#lineItem0').clone(true, true)
          .appendTo("#lineitems")
          .attr("id", "lineitem" +  cloneIndex)
          .find("*").each(function() {
              var id = this.id || "";
              var match = id.match(regex) || [];
              if (match.length == 3) {
                  this.id = match[1] + (cloneIndex);
              }
              var name = this.name || "";
              var match1 = name.match(regex1) || [];
              if (match1.length == 4) {
                  this.name = match1[1] + cloneIndex + match1[3];
              }
          });
          cloneIndex++;
          
    },

    addTenderRow: function addTenderRow(event) {
      console.log('tender row called...');
      event.preventDefault();

      // tag name regex text[0].text
      var regex1 = /^(.*\[)(\d)+(\].*)/i;
      
      // tag id regex name-0
      var regex = /^(.*)(\d)+$/i;
      var cloneIndex = $(".tender").length;
      console.log('cloneIndex='+cloneIndex);
      $('#tender0').clone(true, true)
          .appendTo("#tenders")
          .attr("id", "tender" +  cloneIndex)
          .find("*").each(function() {
              var id = this.id || "";
              var match = id.match(regex) || [];
              if (match.length == 3) {
                  this.id = match[1] + (cloneIndex);
              }
              var name = this.name || "";
              var match1 = name.match(regex1) || [];
              if (match1.length == 4) {
                  this.name = match1[1] + cloneIndex + match1[3];
              }
          });
          cloneIndex++

    },

    addCoupon: function addCoupon(event) {
      console.log('addCoupon called...');
      event.preventDefault();

      // tag name regex text[0].text
      var regex1 = /^(.*\[)(\d)+(\].*)/i;
      
      // tag id regex name-0
      var regex = /^(.*)(\d)+$/i;
      var cloneIndex = $(".coupon").length;

      $('#coupon0').clone(true, true)
          .appendTo("#coupontable")
          .attr("id", "coupon" +  cloneIndex)
          .find("*").each(function() {
              var id = this.id || "";
              var match = id.match(regex) || [];
              if (match.length == 3) {
                  this.id = match[1] + (cloneIndex);
              }
              var name = this.name || "";
              var match1 = name.match(regex1) || [];
              if (match1.length == 4) {
                  this.name = match1[1] + cloneIndex + match1[3];
              }
          });
          cloneIndex++

    },

    addDiscount: function addDiscount(event) {
      console.log('addDiscount called...');
      event.preventDefault();

      // tag id regex name-0
      var regex = /^(.*)(\d)+$/i;
      var cloneIndex = $(".discount").length;
      console.log('cloneIndex='+cloneIndex);
      $('#discount0').clone(true, true)
          .appendTo("#discounttable")
          .attr("id", "discount" +  cloneIndex)
          .find("*").each(function() {
              var id = this.id || "";
              var match = id.match(regex) || [];
              if (match.length == 3) {
                  this.id = match[1] + (cloneIndex);
              }
              var name = this.name || "";
              var match1 = name.match(regex1) || [];
              if (match1.length == 4) {
                  this.name = match1[1] + cloneIndex + match1[3];
              }
          });
          cloneIndex++
    },

    registerClickHandlers: function registerClickHandlers() {
      console.log('registering click handlers...');
      $("button.cloneLineItem").click(this.addItemRow);
      $("button.#btnTenderClone").click(this.addTenderRow);
      $("#couponBtn").click(this.addCoupon);
      $("#discountBtn").click(this.addDiscount);
    },

    init: function initialize() {
      console.log(this);
      this.setDefaults();
      this.registerClickHandlers();
    }

  }

  $(document).ready(function() {
    vpos.init();
  });
  
})();

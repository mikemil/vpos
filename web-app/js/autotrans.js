 (function () {

  console.log("in siaf...");

  var vpos = {

    // selectors for setting default values
    selectors:  ['#userid', '#transClassName','#locationNumber', '#pswd', '#terminalName', '#associateSpecassociateNumber', 
                  '#lineItemSpecs-sku-0', '#lineItemSpecs-quantity-0', '#tenderSpecs-tenderCode-0', '#tenderSpecs-cardToken-0',
                  '#tenderSpecs-cardType-0', '#tenderSpecs-cardSubType-0'], 

    // default values for the required fields
    defaultVals: ['102', 'com.jda.portfolio.pos.base.transaction.RetailTransaction', '8001', '102', '20', '102', '210',
                    '1', 'VI', 'abababababab', '100', '1001'],                  

    setDefaults: function setDefaults()  {
        event.preventDefault();
        //console.log('setting the default form values...');
         for (var i=0; i < this.selectors.length; i++) {
             //console.log('setting '+this.selectors[i]+ ' to '+this.defaultVals[i]);
             $(this.selectors[i]).val(this.defaultVals[i]);
         }
    },

    // main function for cloning a section
    addRow:  function addRow ( idToClone, idToAppendTo, baseAttributeId, event) {
      event.preventDefault();

      // tag name regex text[0].text
      var regex1 = /^(.*\[)(\d)+(\].*)/i;
      
      // tag id regex name-0
      var regex = /^(.*)(\d)+$/i;
      var cloneIndex = $("." + baseAttributeId ).length;

      $(idToClone).clone(true, true)
          .appendTo(idToAppendTo)
          .attr("id", baseAttributeId +  cloneIndex)
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

    addItemRow:  function addItemRow (event) {
      vpos.addRow("#lineItem0", "#lineitems", "lineitem", event );
    },

    addTenderRow: function addTenderRow(event) {
      vpos.addRow("#tender0", "#tenders", "tender", event );
    },

    addCoupon: function addCoupon(event) {
      vpos.addRow("#coupon0", "#coupontable", "coupon", event );
    },

    addDiscount: function addDiscount(event) {
      vpos.addRow("#discount0", "#discounttable", "discount", event );
    }, 

    fade: function fade() {
      console.log('showing post msg, spinner and fading...');
      $('.hdrmsg').show();
      //$('.container-fluid').fadeToggle('slow');
      $('.container-fluid').fadeToggle(700);
    }, 

    initFocus: function initFocus() {
      $('#lineItemSpecs-sku-0').focus();
      $("#lineItemSpecs-sku-0:text:visible:first").focus();
    },

    registerClickHandlers: function registerClickHandlers() {
      //console.log('registering click handlers...');
      $('#submit').click(this.fade);
      $("button.cloneLineItem").click(this.addItemRow);
      $("#btnTenderClone").click(this.addTenderRow);
      $("#couponBtn").click(this.addCoupon);
      $("#discountBtn").click(this.addDiscount);
    },

    init: function initialize() {
      this.setDefaults();
      this.registerClickHandlers();
      this.initFocus();
    }

  }

  $(document).ready(function() {
    vpos.init();
  });
  
})();

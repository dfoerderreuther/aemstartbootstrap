console.log('test.js');

(function ($, CQ) {
    console.log('jquery', $);
    console.log('CQ', CQ);
    console.log('CQ.WCM', CQ.WCM);
    console.log('CQ.WCM.isEditMode', CQ.WCM.isEditMode(true));
}(jQuery, CQ));

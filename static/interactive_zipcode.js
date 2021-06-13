d3.json('./static/data.json').then((data) => {
 console.log(data)});


 function createZipCodeDropDown() {
    var partnerSelector = d3.select("#partner-name"); //SELECT <select> WHERE PARTNER NAMES WILL APPEAR

    d3.json('./static/partner_list.json').then((partnerOptions) => { //READ IN JSON FILE COINTAING ALL PARTNER'S NAMES
        //var partnerOptions = partnerData; 
        //console.log(partnerOptions)
        partnerOptions.forEach((partner) => { //LOOP THROUGH PARTNER LIST TO CREATE INITAL DROP DOWN
            partnerSelector
            .append('option')
            .text(partner)
            .property('Value', partner);
        })
        document.getElementById("partner-name").size = partnerOptions.length //SELECT PARTER <select> AND MAKE IT THE SIZE OF THE LENGTH OF THE PARTNER'S LIST
    })
}; //END OF createOptions() 
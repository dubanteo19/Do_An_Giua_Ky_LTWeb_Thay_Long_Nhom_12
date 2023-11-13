function getStatusClass(productStatus) {
    let statusIndex = Number(productStatus);
    let result = "";
    switch (statusIndex) {
        case 1:
            result = "status status-active";
            break;
        case 2:
            result = "status status-ban";
            break;
        case 6:
            result = "status status-active";
            break;
        case 7:
            result = "status status-delivering";
            break;
        case 8:
            result = "status status-active";
            break;
        case 9:
            result = "status status-cancel";
            break;

        default:
            // statements_def
            break;
    }
    return result;
}
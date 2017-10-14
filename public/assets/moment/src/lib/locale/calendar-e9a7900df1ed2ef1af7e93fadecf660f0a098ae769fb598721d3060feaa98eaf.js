export var defaultinterview_hour = {
    sameDay : '[Today at] LT',
    nextDay : '[Tomorrow at] LT',
    nextWeek : 'dddd [at] LT',
    lastDay : '[Yesterday at] LT',
    lastWeek : '[Last] dddd [at] LT',
    sameElse : 'L'
};

import isFunction from '../utils/is-function';

export function interview_hour (key, mom, now) {
    var output = this._interview_hour[key] || this._interview_hour['sameElse'];
    return isFunction(output) ? output.call(mom, now) : output;
}
;

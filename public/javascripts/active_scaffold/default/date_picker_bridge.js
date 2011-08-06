jQuery(function($){
  if (typeof($.datepicker) === 'object') {
    $.datepicker.regional['ru'] = {"closeText":"\u0417\u0430\u043a\u0440\u044b\u0442\u044c","prevText":"\u041f\u0440\u0435\u0434\u044b\u0434\u0443\u0449\u0435\u0435","nextText":"\u0421\u043b\u0435\u0434\u0443\u044e\u0449\u0435\u0435","currentText":"\u0421\u0435\u0433\u043e\u0434\u043d\u044f","monthNames":["\u044f\u043d\u0432\u0430\u0440\u044f","\u0444\u0435\u0432\u0440\u0430\u043b\u044f","\u043c\u0430\u0440\u0442\u0430","\u0430\u043f\u0440\u0435\u043b\u044f","\u043c\u0430\u044f","\u0438\u044e\u043d\u044f","\u0438\u044e\u043b\u044f","\u0430\u0432\u0433\u0443\u0441\u0442\u0430","\u0441\u0435\u043d\u0442\u044f\u0431\u0440\u044f","\u043e\u043a\u0442\u044f\u0431\u0440\u044f","\u043d\u043e\u044f\u0431\u0440\u044f","\u0434\u0435\u043a\u0430\u0431\u0440\u044f"],"monthNamesShort":["\u044f\u043d\u0432.","\u0444\u0435\u0432\u0440.","\u043c\u0430\u0440\u0442\u0430","\u0430\u043f\u0440.","\u043c\u0430\u044f","\u0438\u044e\u043d\u044f","\u0438\u044e\u043b\u044f","\u0430\u0432\u0433.","\u0441\u0435\u043d\u0442.","\u043e\u043a\u0442.","\u043d\u043e\u044f\u0431.","\u0434\u0435\u043a."],"dayNames":["\u0432\u043e\u0441\u043a\u0440\u0435\u0441\u0435\u043d\u044c\u0435","\u043f\u043e\u043d\u0435\u0434\u0435\u043b\u044c\u043d\u0438\u043a","\u0432\u0442\u043e\u0440\u043d\u0438\u043a","\u0441\u0440\u0435\u0434\u0430","\u0447\u0435\u0442\u0432\u0435\u0440\u0433","\u043f\u044f\u0442\u043d\u0438\u0446\u0430","\u0441\u0443\u0431\u0431\u043e\u0442\u0430"],"dayNamesShort":["\u0412\u0441","\u041f\u043d","\u0412\u0442","\u0421\u0440","\u0427\u0442","\u041f\u0442","\u0421\u0431"],"dayNamesMin":["\u0412\u0441","\u041f\u043d","\u0412\u0442","\u0421\u0440","\u0427\u0442","\u041f\u0442","\u0421\u0431"],"changeYear":true,"changeMonth":true,"weekHeader":"\u041d\u0435\u0434.","firstDay":1,"isRTL":false,"showMonthAfterYear":false,"dateFormat":"dd.mm.yy"};
    $.datepicker.setDefaults($.datepicker.regional['ru']);
  }
  if (typeof($.timepicker) === 'object') {
    $.timepicker.regional['ru'] = {"ampm":false,"hourText":"\u0427\u0430\u0441\u043e\u0432","minuteText":"\u041c\u0438\u043d\u0443\u0442","secondText":"\u0421\u0435\u043a\u0443\u043d\u0434","timeText":"\u0412\u0440\u0435\u043c\u044f","currentText":"\u0421\u0435\u0433\u043e\u0434\u043d\u044f","closeText":"\u0417\u0430\u043a\u0440\u044b\u0442\u044c"};
    $.timepicker.setDefaults($.timepicker.regional['ru']);
  }
});
$(document).ready(function() {
  $('input.date_picker').live('focus', function(event) {
    var date_picker = $(this);
    if (typeof(date_picker.datepicker) == 'function') {
      if (!date_picker.hasClass('hasDatepicker')) {
        date_picker.datepicker();
        date_picker.trigger('focus');
      }
    }
    return true;
  });
  $('input.datetime_picker').live('focus', function(event) {
    var date_picker = $(this);
    if (typeof(date_picker.datetimepicker) == 'function') {
      if (!date_picker.hasClass('hasDatepicker')) {
        date_picker.datetimepicker();
        date_picker.trigger('focus');
      }
    }
    return true;
  });
});
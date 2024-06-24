
        <script src="{{  asset('assets/js/oneui.core.min.js') }}"></script>

        <script src="{{  asset('assets/js/oneui.app.min.js') }}"></script>
        <script src="{{  asset('assets/js/plugins/chart.js/Chart.bundle.min.js') }}"></script>
        <script src="{{  asset('assets/js/pages/be_pages_dashboard_v1.min.js') }}"></script>
        <script src="{{  asset('assets/js/plugins/datatables/jquery.dataTables.min.js') }}"></script>
        <script src="{{  asset('assets/js/plugins/datatables/dataTables.bootstrap4.min.js') }}"></script>
        <script src="{{  asset('assets/js/plugins/datatables/buttons/dataTables.buttons.min.js') }}"></script>
        <script src="{{  asset('assets/js/plugins/datatables/buttons/buttons.print.min.js') }}"></script>
        <script src="{{  asset('assets/js/plugins/datatables/buttons/buttons.html5.min.js') }}"></script>
        <script src="{{  asset('assets/js/plugins/datatables/buttons/buttons.flash.min.js') }}"></script>
        <script src="{{  asset('assets/js/plugins/datatables/buttons/buttons.colVis.min.j') }}s"></script>
        <script src="{{  asset('assets/js/pages/be_tables_datatables.min.js') }}"></script>
        
        <script src="{{  asset('assets/js/plugins/es6-promise/es6-promise.auto.min.js') }}"></script>
        <script src="{{  asset('assets/js/plugins/sweetalert2/sweetalert2.min.js') }}"></script>
        <script src="{{  asset('assets/js/plugins/select2/js/select2.full.min.js') }}"></script>
        <script src="{{  asset('assets/js/plugins/jquery.maskedinput/jquery.maskedinput.min.js') }}"></script>
        <script src="{{  asset('assets/js/plugins/ion-rangeslider/js/ion.rangeSlider.min.js') }}"></script>
        <script src="{{  asset('assets/js/plugins/dropzone/dropzone.min.js') }}"></script>
        <script src="{{  asset('assets/js/plugins/flatpickr/flatpickr.min.js') }}"></script>
        <script>jQuery(function () { One.helpers(['flatpickr', 'datepicker', 'colorpicker', 'maxlength', 'select2', 'masked-inputs', 'rangeslider']);  });</script>
        <script src="{{  asset('assets/js/pages/be_comp_dialogs.min.js') }}"></script>
        <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script> -->
        <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script> -->
        <script src="{{  asset('assets/js/plugins/bootstrap-notify/bootstrap-notify.min.js')}}"></script>
        <script src="{{  asset('assets/js/plugins/magnific-popup/jquery.magnific-popup.min.js')}}"></script>

        <!-- Page JS Helpers (Magnific Popup Plugin) -->
        <script>jQuery(function () { One.helpers('magnific-popup'); });</script>

        <!-- {{-- <script src="https://www.gstatic.com/firebasejs/7.6.0/firebase-app.js"></script> -->
        <!-- <script src="https://www.gstatic.com/firebasejs/7.6.0/firebase-database.js"></script> --}} -->
        <script src="{{  asset('assets/toaster/toastr.js')}}"></script>

        

        <script type="text/javascript">
        
        // Import the functions you need from the SDKs you need
        // TODO: Add SDKs for Firebase products that you want to use
        // https://firebase.google.com/docs/web/setup#available-libraries

        // Your web app's Firebase configuration
        toastr.options = {
                "closeButton": true,
                "debug": false,
                "newestOnTop": false,
                "progressBar": true,
                "rtl": false,
                "positionClass": "toast-top-right",
                "preventDuplicates": false,
                "onclick": null,
                "showDuration": 300,
                "hideDuration": 1000,
                "timeOut": 5000,
                "extendedTimeOut": 1000,
                "showEasing": "swing",
                "hideEasing": "linear",
                "showMethod": "fadeIn",
                "hideMethod": "fadeOut"
              }
        // const firebaseConfig = {
        //         apiKey: "AIzaSyB57l4ZLhlAX5xTC6FlmS6_h48ocOkfeQU",
        //         authDomain: "digital-signage-solution-19f40.firebaseapp.com",
        //         databaseURL: "https://digital-signage-solution-19f40-default-rtdb.firebaseio.com",
        //         projectId: "digital-signage-solution-19f40",
        //         storageBucket: "digital-signage-solution-19f40.appspot.com",
        //         messagingSenderId: "580070672247",
        //         appId: "1:580070672247:web:cc44107e9b100b553ec372"
        // };

        // // Initialize Firebase
        // firebase.initializeApp(firebaseConfig);
        // var fireBaseDatabase = firebase.database();
        
        // var vendorNode = fireBaseDatabase.ref('devices');
        // console.log(vendorNode);
        // vendorNode.on('child_changed', function (snapshot) {
        //     console.log(snapshot.val());
        //         var value = snapshot.val();
        //         if(value.status == 1){
        //                $("#device-"+value.id).removeClass('bg-danger');
        //                $("#device-"+value.id).addClass('bg-success');
        //                 toastr["success"](value.name+' device is online now.');
        //         }else{
        //                 $("#device-"+value.id).removeClass('bg-success');
        //                $("#device-"+value.id).addClass('bg-danger');
        //                 toastr["info"](value.name+' device is offline now.');
        //         }
        // });
        </script>
        @yield('js')

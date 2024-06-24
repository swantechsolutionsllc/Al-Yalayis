@if (Auth::check())
    <script>
        // var socket = '';
        // var user_id = "{{auth()->user()->id}}";
        // var socket_url = "{{env('APP_SOCKET_URL')}}:{{env('APP_SOCKET_PORT')}}";
        // $(document).ready(function(){   
        //     console.log(socket_url);
        //     socket = new WebSocket('wss://ohmc.swantech.ae/ws?type=dashboard&id=' + user_id);
        //     socket.onmessage = function(e) {
        //         msg = JSON.parse(e.data);
        //         console.log(msg);
        //         var device_id = msg.id;
        //         if(msg.command == 'online-status'){
        //             if(msg.status == 'online'){
        //                 One.helpers('notify', {type: 'success', icon: 'fa fa-check mr-1', message: msg.name+' Becomes Online'});
        //                 $("#device-status-"+device_id).removeClass('bg-danger');
        //                 $("#device-status-"+device_id).addClass('bg-success');
        //                 $(".device-"+device_id).attr('disabled', false);
                                    
        //             }else if(msg.status == 'offline'){
        //                 One.helpers('notify', {type: 'warning', icon: 'fa fa-check mr-1', message: msg.name+' Becomes Offline'});
        //                 $("#device-status-"+device_id).removeClass('bg-success');
        //                 $("#device-status-"+device_id).addClass('bg-danger');
        //                 $(".device-"+device_id).attr('disabled', true);
        //             }
        //             if($("#content-page").hasClass("advance-dashboard")){
        //                 location.reload();
        //             }
        //         }else if(msg.command == 'download-percentage'){
        //             if ($("#content-page").hasClass("devices-page")) {
        //                 $("#device-progress-"+device_id).text(msg.value+'%');
        //                 $("#device-progress-width-"+device_id).css("width", msg.value+'%');
        //                 if(msg.value >= 100){
        //                     $("#device-progress-width-"+device_id).removeClass("progress-bar-striped progress-bar-animated"); 
        //                     $("#device-progress-div-"+device_id).addClass('none');
        //                     $("#device-progress-"+device_id).addClass('none');
        //                     $("#device-progress-completed-"+device_id).removeClass('none');
        //                 }else{
        //                     $("#device-progress-width-"+device_id).addClass("progress-bar-striped progress-bar-animated"); 
                            
        //                 }
        //             }
        //         }else if(msg.command == 'running-asset'){
        //             if ($(".device-liveview-"+device_id).length > 0) {
        //                 var values = msg.value;
        //                 values.forEach(function(item) {
        //                     $("."+item.asset_type+'-box-'+item.box_no+"-device-"+device_id).hide();
        //                     $("#"+item.asset_type+'-box-'+item.box_no+"-device-"+device_id+" .template-assets-"+item.asset_id).show();
        //                 });
        //             }
        //         }
        //     }
        // });
        $(".action-btns").click(function(){
            if($(this).attr('data-action') == 'live-view'){
                var url = "{{url('device-live-view')}}"
                window.open(url+'/'+$(this).attr('data-id'), "_blank");
            }else{
                var data = {
                    device_id   :  $(this).attr('data-id'),
                    message      :  $(this).attr('data-action'),
                    _token      : "{{csrf_token()}}"
                };
                $.ajax({
                    url: "{{ route('admin.device-actions') }}",
                    type: "POST",
                    data: data,
                    success: function(response) {
                        One.helpers('notify', {type: 'success', icon: 'fa fa-check mr-1', message:response.success});
                    },
                    error: function(xhr, status, error) {
                        var errorMessage = xhr.responseJSON.error;
                        One.helpers('notify', {type: 'warning', icon: 'fa fa-check mr-1',errorMessage});
                    }
                });
            }      
        });
        // $("#check-availablity").click(function(){
        //         var data = {
        //             type        : 'check-availablity'
        //         };
        //         socket.send(JSON.stringify(data));
        // });
        // setInterval(connectWebSocket, 1000);
        // function connectWebSocket(){
        //     if (socket.readyState === WebSocket.CONNECTING) {
        //             console.log('WebSocket is connecting.');
        //     } else if (socket.readyState === WebSocket.OPEN) {
        //         console.log('WebSocket connection is open.');
        //     } else if (socket.readyState === WebSocket.CLOSING) {
        //         console.log('WebSocket is clossing');
        //         //socket = new WebSocket('wss://devdssv2.swantech.ae/ws?type=dashboard&id=' + user_id);
        //     } else if (socket.readyState === WebSocket.CLOSED) {
        //         console.log('WebSocket is closed');
        //         socket = new WebSocket('wss://ohmc.swantech.ae/ws?type=dashboard&id=' + user_id);
        //     }
        // }
    </script>
@endif


@if(count($devices))
    <h3 style="text-align: left;">Devices</h3>
    <div class="row">
        @foreach($devices as $d)  
            @php
                $playLists = $d->playlists()->pluck('play_lists.id')->toArray();
            @endphp      
            <div class="col-md-12 text-left  mb-2">
                <div class="custom-control custom-switch mb-1">
                    <input type="checkbox"  id="checkbox-{{ $d->id }}" class="custom-control-input paly-list-devices" data-device-id="{{$d->id}}" type="checkbox"
                    name="" value="{{$play_list_id}}" {{in_array($play_list_id, $playLists)?'checked':''}}  >
                    <label class="custom-control-label" for="checkbox-{{ $d->id }}"></label>
                    {{$d->device_name}}
                    
                </div>
            </div>
        @endforeach
    </div>
@else
    <div class="col-md-12">
        No device available.
    </div>
@endif
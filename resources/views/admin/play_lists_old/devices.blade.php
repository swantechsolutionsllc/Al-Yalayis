@if(count($devices))
@foreach($devices as $d)
    <div class="col-md-2 text-center">
        <div class="custom-control custom-switch mb-1">
            <input type="checkbox"  id="checkbox-{{ $d->id }}" class="custom-control-input paly-list-devices" data-device-id="{{$d->id}}" type="checkbox"
            name="" value="{{$play_list_id}}" {{$d->play_list_id==$play_list_id?'checked':''}}  >
            <label class="custom-control-label" for="checkbox-{{ $d->id }}"></label>
            {{$d->device_name}}
            
        </div>
    </div>
@endforeach
@else
    <div class="col-md-12">
        No device available.
    </div>
@endif
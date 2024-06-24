@foreach($get_all_users as $user)
<div class="modal fade" id="edituser{{$user->id}}" tabindex="-1" role="dialog" aria-labelledby="modal-block-fadein" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" action="{{url('users/' . $user->id)}}">
                @csrf
                @method('PUT')
                <div class="block block-rounded block-themed block-transparent mb-0">
                    <div class="block-header bg-primary-dark">
                        <h3 class="block-title">Edit User</h3>
                        <div class="block-options">
                            <button type="button" class="btn-block-option" data-dismiss="modal" aria-label="Close">
                                <i class="fa fa-fw fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <div class="block-content font-size-sm">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label for="val-username">Username <span class="text-danger">*</span></label>
                                <input id="orgName" value="{{$user->name}}" type="text" name="name" placeholder="User's Name" class="form-control" value="">
                            </div>
                            <div class="form-group">
                                <label for="val-email">Email <span class="text-danger">*</span></label>
                                <input type="email" value="{{$user->email}}" name="email" placeholder="Email" class="form-control" value="">
                            </div>
                            <div class="form-group">
                                @php
                                    $rolArray = $user->roles()->pluck('id')->toArray();
                                @endphp
                                
                                @foreach ($roles as $role)
                                   
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="example-radios-inline{{ $role->id }}-{{ $user->id }}"  name="role" value="{{ $role->id }}" {{$rolArray && in_array($role->id, $rolArray)?'checked':'' }} >
                                        <label class="form-check-label roles-class {{$rolArray && in_array($role->id, $rolArray)?'selected-role':'' }}" style="" for="example-radios-inline{{ $role->id }}-{{ $user->id }}"><i class="fa fa-user mr-2"></i> {{ $role->name }}</label>
                                    </div>
                                @endforeach
                            </div>
                            
                            
                        </div>
                    </div>
                    <div class="block-content block-content-full text-right border-top">
                        <button type="button" class="btn btn-alt-primary mr-1" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" >Submit</button>
                    </div>
                </div>
            </form>

        </div>
    </div>
</div>

    </div>
@endforeach

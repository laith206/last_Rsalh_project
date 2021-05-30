@extends('layouts.admin_dashbord')



@section('admin-main')
    <div class="container" style="padding: 30px 0">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    @if (Session::has('message'))
                        <div class="alert alert-success" role="alert">
                            {{ Session::get('message') }}</div>
                    @endif
                    <div class="panel-heading">Sale Settings</div>
                    <div class="panel-body">
                        <form class="form-horizontal" action="{{ route('sale_timer_update') }}" method="POST">
                            @csrf

                            <div class="form-group">
                                <label for="status" class="col-md-4">Status</label>
                                <div class="col-md-4">
                                    <select id="status" class="form-control" name="status">
                                        @if ($sale->status == 1)
                                            <option selected value="1">Active</option>
                                            <option value="0">Inactive</option>
                                        @else
                                            <option selected value="0">Inactive</option>
                                            <option value="1">Active</option>
                                        @endif

                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="date" class="col-md-4">Sale Date</label>
                                <div class="col-md-4">
                                    <input type="hidden" value="{{ $sale->id }}" name="id" >
                                    <input type="text" id="date" placeholder="YYYY/MM/DD HH:MM:SS"
                                        class="form-control input-md" name="sale_date" value="{{ $sale->sale_date }}">

                                </div>
                            </div>
                            <div class="form-group">
                                <label for="submit" class="col-md-4"></label>
                                <div class="col-md-4">
                                    <button type="submit" name="submit" class="btn btn-primary">
                                        Update
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('scripts')


    <script src="{{ asset('assets/build/js/bootstrap-datetimepicker.min.js') }}"></script>
    <script>
        $(function() {
            $('#date').datetimepicker({
                format: 'Y-MM-DD hh:mm:ss',
            })
        });

    </script>
@endpush

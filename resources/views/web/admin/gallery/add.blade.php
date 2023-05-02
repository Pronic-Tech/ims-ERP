@extends('web.admin.layouts.master')
@section('content')
    <div class="main-content">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
            </script>

            <ul class="breadcrumb">
                @include($view_path.'.includes.breadcrumb-primary')
                <li class="active">Add</li>
            </ul><!-- .breadcrumb -->
        </div>
        <div class="page-content">
            <div class="page-header">
                <h1>
                    {{ $panel }} Manager
                    <small>
                        <i class="ace-icon fa fa-angle-double-right"></i>
                        Add form
                    </small>
                </h1>
            </div><!-- /.page-header -->
            <div class="row">
                <div class="col-xs-12">
                    <!-- PAGE CONTENT BEGINS -->
                    @include('web.admin.includes.buttons.add-page-button')
                    @include('includes.validation_error_messages')

                    <div class="form-horizontal">

                    {!! Form::model($data['blank_ins'], ['route' => $base_route.'.store', 'method' => 'POST', 'class' => 'form-horizontal',
                     'id' => 'validation-form', "enctype" => "multipart/form-data"]) !!}

                    @include($view_path.'.includes.form')

                    <div class="clearfix form-actions">
                        <div class="align-right">
                            <button class="btn" type="reset">
                                <i class="ace-icon fa fa-undo bigger-110"></i>
                                Reset
                            </button>
                            <button class="btn btn-info" type="submit">
                                <i class="ace-icon fa fa-save bigger-110"></i>
                                Submit
                            </button>
                        </div>
                    </div>

                    <div class="hr hr-24"></div>

                    {!! Form::close() !!}

                    <div class="hr hr-18 dotted hr-double"></div>

                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div><!-- /.main-content -->


@endsection

@section('js')
    <script>
        $(document).ready(function () {
            $('#load-image-html').click(function () {
                $.ajax({
                    type: 'POST',
                    url: '{{ route('web.admin.gallery.image-html') }}',
                    data: {
                        _token: '{{ csrf_token() }}',
                    },
                    success: function (response) {
                        var data = $.parseJSON(response);

                        if (data.error) {
                            $.notify(data.message, "warning");
                        } else {

                            $('#image_wrapper').append(data.html);
                            $.notify(data.message, "success");
                        }
                    }
                });

            });
        });
    </script>

    @include('includes.scripts.summarnote')
    @include('includes.scripts.table_tr_sort')
@endsection

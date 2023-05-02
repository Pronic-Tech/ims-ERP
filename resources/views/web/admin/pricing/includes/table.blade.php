<div class="row">
    <div class="col-xs-12">
    @include('includes.data_table_header')
    <!-- div.table-responsive -->
        @if (isset($data['rows']) && $data['rows']->count() > 0)
            <div class="table-responsive">
                <table id="sample-table-2" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="center">
                                <label>
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>Detail</th>
                            <th>Rank</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                        @if (isset($data['rows']) && $data['rows']->count() > 0)
                            {!! Form::open(['route' => $base_route.'.bulk-action', 'id' => 'bulk_action_form']) !!}
                            @foreach($data['rows'] as $row)
                                <tr>
                                    <td class="center">
                                        <label>
                                            <input type="checkbox" name="chkIds[]" value="{{ encrypt($row->id) }}" class="ace" />
                                            <span class="lbl"></span>
                                        </label>
                                    </td>
                                    <td>
                                        <div id="faq-list-4" class="panel-group accordion-style1 accordion-style2">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <a href="#{{$row->id}}" data-parent="#faq-list-4" data-toggle="collapse" class="accordion-toggle collapsed">
                                                        <i class="ace-icon fa fa-arrow-down"></i>
                                                        &nbsp;
                                                        {{$row->title}} - {{ $row->tag }}
                                                        <hr class="hr-2">
                                                        <span class="label label-sm label-primary">
                                                        Created On - {{ date('jS M, Y', strtotime($row->created_at)) }}
                                                    </span>
                                                        <span class="label label-sm label-success">
                                                        Last Updated - {{ date('jS M, Y', strtotime($row->updated_at)) }}
                                                    </span>
                                                    </a>
                                                </div>

                                                <div class="panel-collapse collapse" id="{{$row->id}}" style="height: 0px;">
                                                    <div class="panel-body center">
                                                        <div class="col-xs-12 col-sm-12 pricing-box">
                                                            <div class="widget-box widget-color-blue">
                                                                <div class="widget-header" style="background: {{isset($row->tag_color)?$row->tag_color:'#FFF'}};color: white">
                                                                    <h5 class="widget-title bigger">Business Package</h5> <span class="badge-yellow"> - {{$row->tag}}</span>
                                                                </div>

                                                                <div class="widget-body">
                                                                    <div class="widget-main">
                                                                        <ul class="list-unstyled spaced2">
                                                                            <li>
                                                                                @if (isset($row->image) && $row->image !=='')
                                                                                    {{-- <div class="heading">
                                                                                     </div>--}}
                                                                                    <img style="border: 1px {{isset($row->tag_color)?$row->tag_color:''}} solid;" src="{{ asset('images/pricing/'. $row->image) }}" alt="{{$row->title}}" title="{{$row->title}}" class="center">
                                                                                @endif
                                                                            </li>
                                                                            <li>
                                                                                {!! $row->description!!}
                                                                            </li>
                                                                        </ul>

                                                                        <hr>
                                                                        <div class="price">
                                                                            {{isset($generalSetting->currency_symbol)?$generalSetting->currency_symbol:'$'}} {{{$row->new_price}}}
                                                                            <small>/{{isset($row->per_term)?$row->per_term:''}}</small>
                                                                            <span class="" style="text-decoration: line-through">
                                                                                {{isset($generalSetting->currency_symbol)?$generalSetting->currency_symbol:'$'}} {{{$row->old_price}}}
                                                                            </span>
                                                                        </div>
                                                                    </div>

                                                                    <div>
                                                                        <a class="btn btn-block btn-primary" href="{{$row->link}}" target="{{$row->open_in}}">
                                                                            <i class="ace-icon fa fa-shopping-cart bigger-110"></i>
                                                                            {{isset($row->button_text)?$row->button_text:'BUY NOW'}}
                                                                        </a>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>

                                    <td>
                                        <div class="btn-group">
                                            <button data-toggle="dropdown" class="btn btn-minier dropdown-toggle {{ $row->status == 'active'?"btn-info":"btn-warning" }}" >
                                                {{ $row->status == 'active'?"Active":"In Active" }}
                                                <i class="ace-icon fa fa-caret-down"></i>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="{{ route($base_route.'.active', ['id' => encrypt($row->id)]) }}" title="Active"><i class="ace-icon fa fa-check"></i> Active</a>
                                                </li>

                                                <li>
                                                    <a href="{{ route($base_route.'.in-active', ['id' => encrypt($row->id)]) }}" title="In-Active"><i class="ace-icon fa fa-remove"></i> InActive</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>

                                    <td>
                                        <div class=" btn-group">
                                            <a href="{{ route($base_route.'.view', ['id' => encrypt($row->id)]) }}" class="btn btn-xs btn-success">
                                                <i class="ace-icon fa fa-eye"></i>
                                            </a>

                                            <a href="{{ route($base_route.'.edit', ['id' => encrypt($row->id)]) }}" class="btn btn-xs btn-info">
                                                <i class="ace-icon fa fa-edit"></i>
                                            </a>

                                            <a href="{{ route($base_route.'.delete', ['id' => encrypt($row->id)]) }}" class="btn btn-xs btn-danger bootbox-confirm">
                                                <i class="ace-icon fa fa-trash"></i>
                                            </a>

                                        </div>
                                    </td>
                                </tr>
                            @endforeach

                            {!! Form::close() !!}

                            <tr>
                                <td colspan="7">{!! $data['rows']->appends($data['filter_query'])->links() !!}</td>
                            </tr>

                        @else
                            <tr><td colspan="7">No data found.</td></tr>
                        @endif
                    </tbody>
                </table>
            </div>
        @endif
    </div>
</div>
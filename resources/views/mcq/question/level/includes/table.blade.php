
        @include('includes.data_table_header')
        <!-- div.table-responsive -->
        <div class="table-responsive">
            {!! Form::open(['route' => $base_route.'.bulk-action', 'id' => 'bulk_action_form']) !!}

                <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>S.N.</th>
                            <th>{{ $panel }}</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @if (isset($data['question_levels']) && $data['question_levels']->count() > 0)
                            @php($i=1)
                            @foreach($data['question_levels'] as $question_level)
                                <tr>
                                    <td class="center first-child">
                                        <label>
                                            <input type="checkbox" name="chkIds[]" value="{{ $question_level->id }}" class="ace" />
                                            <span class="lbl"></span>
                                        </label>
                                    </td>
                                    <td>{{ $i }}</td>
                                    <td>{{ $question_level->title }} - [{{ $question_level->id }}]</td>
                                    <td>
                                        <div class="btn-group">
                                            <button data-toggle="dropdown" class="btn btn-primary btn-minier dropdown-toggle {{ $question_level->status == 'active'?"btn-info":"btn-warning" }}" >
                                                {{ $question_level->status == 'active'?"Active":"In Active" }}
                                                <span class="ace-icon fa fa-caret-down icon-on-right"></span>
                                            </button>

                                            <ul class="dropdown-menu">
                                                <li>
                                                    <a href="{{ route($base_route.'.active', ['id' => $question_level->id]) }}"><i class="fa fa-check" aria-hidden="true"></i></a>
                                                </li>

                                                <li>
                                                    <a href="{{ route($base_route.'.in-active', ['id' => $question_level->id]) }}"><i class="fa fa-remove" aria-hidden="true"></i></a>
                                                </li>
                                            </ul>
                                        </div>

                                    </td>
                                    <td>
                                        <div class="action-buttons">
                                            <a class="green" href="{{ route($base_route.'.edit', ['id' => $question_level->id]) }}">
                                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                                            </a>

                                            <a href="{{ route($base_route.'.delete', ['id' => $question_level->id]) }}" class="red bootbox-confirm">
                                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                                @php($i++)
                            @endforeach
                        @else
                            <tr>
                                <td colspan="6">No {{ $panel }} data found. Please Filter {{ $panel }} to show. </td>
                            </tr>
                        @endif
                    </tbody>
                </table>
            {!! Form::close() !!}
        </div>
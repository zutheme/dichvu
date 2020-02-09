<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>Tổng hợp</h3>
              <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Quản lý khách hàng <span class="fa fa-chevron-down"></span></a>
                    @if(isset($catbytypes))
                      <ul class="nav child_menu">
                        <li><a href="{{ url('admin/adsvcustomer') }}">Khách hàng</a></li>
                        @foreach($catbytypes as $row)
                          <li><a href="{{ url('/admin/customerreg/listcustomerbycat/'.$row['idcategory'].'/1/0')}}">{{ $row['namecat'] }}</a></li>
                        @endforeach
                      </ul>    
                      @endif              
                  </li>
                </ul>

              </div>

              <div class="menu_section">
                <h3>Quản lý sản phẩm</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-edit"></i> Sản phẩm <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                       <li><a href="{{ url('admin/product') }}">Sản phẩm</a></li> 
                       <li><a href="{{ url('admin/categoryby/product')}}">Chuyên mục</a></li>
                       <li><a href="{{ url('admin/categoryby/store')}}">Kho hàng</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i>Kho hàng <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      @foreach($stores as $row)
                        <li><a href="{{ url('/admin/orderlist/') }}/{{ $row['idcategory'] }}">{{ $row['namecat'] }}</a></li>
                      @endforeach
                    </ul>
                  </li>
                </ul>
              </div>
               <div class="menu_section">
                <h3>Quản lý nội dung</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-edit"></i> Bài viết <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                       <li><a href="{{ url('admin/category') }}">Chuyên mục</a></li>
                       <li><a href="{{ url('admin/post') }}">Bài viết</a></li> 
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Quản lý Menu <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="{{ url('admin/menu') }}">Tạo menu</a></li>
                      <li><a href="{{ url('admin/menuhascate') }}">Menu</a></li>
                    </ul>
                  </li>

                </ul>
              </div>
              <div class="menu_section">
                <h3>Nhân sự</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-edit"></i> Quản lý <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                       <li><a href="{{ url('/admin/categoryby/department') }}">Bộ phận</a></li> 
                      {{--  <li><a href="{{ url('/admin/categoryby/department') }}">Bộ phận</a></li> --}}
                      {{--  <li><a href="{{ route('admin.aduser.index') }}">Nhân viên</a></li> --}}
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="menu_section">
                <h3>Hệ thống</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-bug"></i> Phân quyền <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="{{ url('admin/roles') }}">Vai trò</a></li>
                      <li><a href="{{ url('admin/perm_command') }}">Lệnh thực thi</a></li>
                      <li><a href="{{ url('admin/permission') }}">Tạo quyền</a></li>
                      <li><a href="{{ url('admin/impperm') }}">Cấp quyền cho nhóm</a></li>
                      <li><a href="{{ url('admin/grantperm') }}">Cấp quyền người dùng</a></li>
                      <li><a href="{{ url('admin/aduser') }}">Quản lý người dùng</a></li>
                      <li><a href="{{ url('admin/categoryby/dashboard')}}">Danh mục quyền</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-windows"></i> Loại nội dung   <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="{{ url('admin/cattype') }}">Kiểu chuyên mục</a></li>
                      <li><a href="{{ url('admin/posttype') }}">Kiểu nội dung</a></li>
                      <li><a href="{{ url('admin/statustype') }}">Kiểu trạng thái</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-sitemap"></i> Danh mục <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="#level1_1">Level One</a>
                        <li><a>Level One<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu"><a href="level2.html">Level Two</a></li>
                            <li><a href="#level2_1">Level Two</a></li>
                            <li><a href="#level2_2">Level Two</a></li>
                          </ul>
                        </li>
                        <li><a href="#level1_2">Level One</a></li>
                    </ul>
                  </li>                  
                  <li><a href="javascript:void(0)"><i class="fa fa-laptop"></i> Báo cáo <span class="label label-success pull-right">Coming Soon</span></a></li>
                </ul>
              </div>
            </div>
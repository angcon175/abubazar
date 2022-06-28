<!DOCTYPE html>
    <html lang="en">
        <!-- header_script -->
        @include('layouts.header_script')
        @yield('css')
        <!-- end header_script -->
        
        <body id="dalal_app">
        <!-- header -->
        @include('layouts.header')
        <!-- end header -->

        <!--###### <<<<<<<< DALAL MAIN >>>>>>>> ######-->
        <main class="main">
            @yield('content')
        </main>
        <!--###### <<<<<<<< DALAL MAIN >>>>>>>> ######-->

        <!-- footer -->
        @include('layouts.footer')
        <!-- end footer -->

        <!-- common_modal -->
        @include('layouts.common_modal')
        <!-- end common_modal -->

        <!-- footer_script -->
        @include('layouts.footer_script')
        <!-- end footer_script -->

        <!-- custom_script -->
        @stack('custom_js')
        <!-- end custom_script -->
    </body>
</html>
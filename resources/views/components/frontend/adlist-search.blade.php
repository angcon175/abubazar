<form action="{{ route('frontend.adlist.search') }}" method="GET">
    <div class="ad-list__search-box">
        <div class="container">
            <!-- Search Box -->
            <div class="search {{ $dark ? 'search-no-borders border-0' : '' }}">

                <div class="search__content">
                    <!-- search by keyword/title -->
                    <div class="search__content-item">
                        <div class="input-field {{ $dark ? 'input-field--transparent' : '' }}">
                            <input type="text" placeholder="{{ __('Search By Keywords') }}..."
                                name="keyword" value="{{ request('keyword', '') }}" />
                            <span class="icon icon--left">
                                <x-svg.search-icon />
                            </span>
                        </div>
                    </div>
                    <!-- Search By location -->
                    <div class="search__content-item">
                        <div class="input-field {{ $dark ? 'input-field--transparent' : '' }}">
                            <select name="town" id="town" style="width: calc(100% - 60px);">
                                @php
                                    $town_names = explode(',', request('town'));
                                @endphp
                                <option value="" style="display: none;">{{ __('select_location') }}</option>
                                @foreach ($towns as $town)
                                    <option value="{{ $town->name }}"
                                        {{ in_array($town->name, $town_names) ? 'selected' : '' }}>
                                        {{ $town->name }}
                                    </option>
                                @endforeach
                            </select>
                            <span class="icon icon--left">
                                <x-svg.search-location-icon />
                            </span>
                        </div>
                    </div>
                    <!-- Select Category temprorary disable -->
                    <div class="search__content-item">
                        <div class="input-field {{ $dark ? 'input-field--transparent' : '' }}">
                            <select name="category" id="category" style="width: calc(100% - 60px);">
                                @php
                                    $categories_slug = explode(',', request('category'));
                                @endphp
                                <option value="" style="display: none;">{{ __('select_category') }}</option>
                                @foreach ($categories as $category)
                                    <option value="{{ $category->slug }}"
                                        {{ in_array($category->slug, $categories_slug) ? 'selected' : '' }}>
                                        {{ $category->name }} </option>
                                @endforeach
                            </select>
                            <span class="icon icon--left">
                                <x-svg.category-icon />
                            </span>
                        </div>
                    </div>
                    <!-- Search Btn -->
                    <div class="search__content-item">
                        <button class="btn btn--lg" type="submit">
                            <span class="icon--left">
                                <x-svg.search-icon stroke="#fff" />
                            </span>
                            {{ __('search') }}
                        </button>
                    </div>
                </div>

            </div>
        </div>
    </div>

    {{-- Mobile Search --}}
    <div class="mobile-search-filed mobile_search">
        <div class="container">
            <div class="search-field-wrap">
                <div class="input-field">
                    <input type="text" placeholder="Search for anything">
                    <span class="icon icon--left">
                        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M9.16667 15.8333C12.8486 15.8333 15.8333 12.8486 15.8333 9.16667C15.8333 5.48477 12.8486 2.5 9.16667 2.5C5.48477 2.5 2.5 5.48477 2.5 9.16667C2.5 12.8486 5.48477 15.8333 9.16667 15.8333Z"
                                stroke="#D32323" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round">
                            </path>
                            <path d="M17.5 17.5L13.875 13.875" stroke="#D32323" stroke-width="1.6"
                                stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                    </span>
                    <div class="search__content-item">
                        <button class="btn btn--lg" type="submit">
                            {{ __('search') }}
                        </button>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="offcanvas-overlay"></div>

    {{ $slot }}
</form>

<div>
    <div class="product-item__gallery">
        <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper mySwiper2" >
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img style="width: 640px; height: 480px;" src="{{ $thumbnail }}" alt="product-img" />
                </div>
                @foreach ($galleries as $gallery)
                <div class="swiper-slide">
                    <img style="width: 640px; height: 480px;" src="{{ asset($gallery->image_url) }}" alt="product-img" />
                </div>
                @endforeach
            </div>
            <div class="feature_tag">
                <span>Featured</span>
            </div>
            <form action="http://127.0.0.1:8000/dashboard/wishlist" method="POST">
                <input type="hidden" name="_token" value="aEDubxdutU4k1xNyjwTgNFBPuBMJA6hMgghJ2EXB">
                <input type="hidden" name="ad_id" value="34">
                <input type="hidden" name="customer_id" value="11">
                <button class="btn--fav" type="submit">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M12 20.25L11.8778 20.4681C11.9537 20.5106 12.0463 20.5106 12.1222 20.4681L12 20.25ZM12 20.25C12.1222 20.4681 12.1222 20.4681 12.1224 20.468L12.1228 20.4678L12.1243 20.4669L12.1298 20.4638L12.1509 20.4519C12.1692 20.4414 12.1962 20.4259 12.2311 20.4055C12.3011 20.3647 12.4032 20.3044 12.5328 20.2255C12.792 20.0678 13.1615 19.8358 13.6045 19.5375C14.49 18.9412 15.6718 18.0786 16.8547 17.014C19.2055 14.8983 21.625 11.9276 21.625 8.62501V8.62497C21.6248 7.44044 21.2144 6.29255 20.4635 5.37645C19.7126 4.46034 18.6676 3.83258 17.5061 3.59989C16.3447 3.36719 15.1385 3.54393 14.0926 4.10006C13.2044 4.57239 12.4783 5.29363 12 6.16991C11.5217 5.29363 10.7956 4.57239 9.90736 4.10005C8.8615 3.54393 7.65532 3.36719 6.49388 3.59989C5.33244 3.83258 4.28743 4.46034 3.53654 5.37645C2.78564 6.29255 2.3752 7.44044 2.375 8.62497V8.62501C2.375 11.9276 4.79451 14.8983 7.14526 17.014C8.32819 18.0786 9.50999 18.9412 10.3955 19.5375C10.8385 19.8358 11.208 20.0678 11.4672 20.2255C11.5968 20.3044 11.6989 20.3647 11.7689 20.4055C11.8038 20.4259 11.8308 20.4414 11.8491 20.4519L11.8702 20.4638L11.8757 20.4669L11.8772 20.4678L11.8776 20.468C11.8778 20.4681 11.8778 20.4681 12 20.25Z" fill="none" stroke="#D32323" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"></path>
            </svg>
            </button>
        </form>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="view">
            <a class="icon" href="{{ route('frontend.ad.gallery.details', $slug) }}">
                <x-svg.full-screen-icon />
            </a>
        </div>
    </div>
    <div thumbsSlider="" class="swiper mySwiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <img style="width: 100px; height: 100px;" src="{{ $thumbnail }}" alt="product-img" />
            </div>
            @foreach ($galleries as $gallery)
            <div class="swiper-slide">
                <img style="width: 100px; height: 100px;" src="{{ asset($gallery->image_url) }}" alt="product-img" />
            </div>
            @endforeach
        </div>
    </div>
</div>
</div>
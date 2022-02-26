<section class="section py-6 {'dsmc_wrapper_section_class' | placeholder}">
    <div class="container">
        <div class="section-header mb-4">
            {if 'dsmc_wrapper_title' | placeholder ?}
            <h2 class="section-title">{'dsmc_wrapper_title' | placeholder}</h2>
            {/if}
            {if 'dsmc_wrapper_headtext' | placeholder}
                {'dsmc_wrapper_headtext' | placeholder}
            {/if}
        </div>
        <div class="section-body row mb-4">
            {$output}
        </div>
        {if 'dsmc_wrapper_footbtn_more_link' | placeholder}
        <div class="section-footer d-flex justify-content-center">
            <a href="{('dsmc_wrapper_footbtn_more_link' | placeholder) | url}" class="btn btn-lg btn-success">{'dsmc_wrapper_footbtn_more_text' | placeholder}</a>
        </div>
        {/if}
    </div>
</section>
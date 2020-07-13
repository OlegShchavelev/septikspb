<section class="showcase">
    {if 'dsmc_wrapper_title' | placeholder ?}
        <h2>{'dsmc_wrapper_title' | placeholder}</h2>
    {/if}
    <div class="row">
        {$output}
    </div>
</section>
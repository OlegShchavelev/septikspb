{foreach $options as $option}
    {if $option.value is array}
        {foreach $option.value as $item}
            <li class="item">
                <i class="fas fa-check bg-primary d-flex align-items-center"></i>
                {$item}</li>
        {/foreach}
    {/if}
{/foreach}
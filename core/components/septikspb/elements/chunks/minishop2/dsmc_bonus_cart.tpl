{foreach $options as $option}
    {if $option.value is array}
        {foreach $option.value as $item}

            <li class="item">
                <i class="fas fa-thumbs-up bg-success"></i>
                {$item}
            </li>
        {/foreach}
    {/if}

{/foreach}

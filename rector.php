<?php

declare(strict_types=1);

use Rector\Config\RectorConfig;
use Rector\Set\ValueObject\SetList;

return RectorConfig::configure()
    ->withPaths([__DIR__ . '/src'])
    ->withSets([
        SetList::DEAD_CODE, 
        SetList::CODE_QUALITY, 
        SetList::CODING_STYLE,
        SetList::TYPE_DECLARATION_DOCBLOCKS, 
        SetList::PRIVATIZATION, 
        SetList::NAMING, 
        SetList::INSTANCEOF, 
        SetList::EARLY_RETURN, 
        SetList::RECTOR_PRESET,
        SetList::PHP_70,
        SetList::PHP_71,
        SetList::PHP_72,
        SetList::PHP_80,
        SetList::PHP_81,
        SetList::PHP_82,
    ]);

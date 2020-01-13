<?php

declare(strict_types=1);

use AbterPhp\Docmed\Bootstrappers;
use AbterPhp\Framework\Constant\Module;
use AbterPhp\Framework\Constant\Priorities;

return [
    Module::IDENTIFIER      => 'AbterPhp\Docmed',
    Module::DEPENDENCIES    => ['AbterPhp\Bootstrap4Website', 'AbterPhp\Contact'],
    Module::ENABLED         => true,
    Module::CLI_BOOTSTRAPPERS => [
        Bootstrappers\Database\MigrationsBootstrapper::class,
    ],
    Module::RESOURCE_PATH   => realpath(__DIR__ . '/resources'),
    Module::MIGRATION_PATHS => [
        Priorities::NORMAL => [
            realpath(__DIR__ . '/src/Databases/Migrations'),
        ],
    ],
    Module::ASSETS_PATHS    => [
        'docmed' => realpath(__DIR__ . '/resources/rawassets'),
    ],
];

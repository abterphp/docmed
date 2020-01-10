<?php

declare(strict_types=1);

namespace AbterPhp\Docmed\Databases\Migrations;

use AbterPhp\Framework\Databases\Migrations\BaseMigration;
use DateTime;

class Init extends BaseMigration
{
    const FILENAME = 'docmed.sql';

    /**
     * Gets the creation date, which is used for ordering
     *
     * @return DateTime The date this migration was created
     */
    public static function getCreationDate(): DateTime
    {
        return DateTime::createFromFormat(DateTime::ATOM, '2020-01-10T22:00:00+00:00');
    }
}

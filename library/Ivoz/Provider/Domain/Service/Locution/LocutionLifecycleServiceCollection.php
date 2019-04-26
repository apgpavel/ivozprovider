<?php

namespace Ivoz\Provider\Domain\Service\Locution;

use Ivoz\Core\Domain\Service\LifecycleServiceCollectionInterface;
use Ivoz\Core\Domain\Service\LifecycleServiceCollectionTrait;

/**
 * @codeCoverageIgnore
 */
class LocutionLifecycleServiceCollection implements LifecycleServiceCollectionInterface
{
    use LifecycleServiceCollectionTrait;

    protected function addService(string $event, LocutionLifecycleEventHandlerInterface $service)
    {
        $this->services[$event][] = $service;
    }
}

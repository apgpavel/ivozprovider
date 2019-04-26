<?php

namespace Ivoz\Provider\Domain\Service\ApplicationServer;

use Ivoz\Core\Domain\Service\LifecycleServiceCollectionInterface;
use Ivoz\Core\Domain\Service\LifecycleServiceCollectionTrait;

/**
 * @codeCoverageIgnore
 */
class ApplicationServerLifecycleServiceCollection implements LifecycleServiceCollectionInterface
{
    use LifecycleServiceCollectionTrait;

    protected function addService(string $event, ApplicationServerLifecycleEventHandlerInterface $service)
    {
        $this->services[$event][] = $service;
    }
}

<?php

namespace Ivoz\Provider\Domain\Service\ProxyUser;

use Ivoz\Core\Domain\Service\LifecycleServiceCollectionInterface;
use Ivoz\Core\Domain\Service\LifecycleServiceCollectionTrait;

/**
 * @codeCoverageIgnore
 */
class ProxyUserLifecycleServiceCollection implements LifecycleServiceCollectionInterface
{
    use LifecycleServiceCollectionTrait;

    protected function addService(string $event, ProxyUserLifecycleEventHandlerInterface $service)
    {
        $this->services[$event][] = $service;
    }
}

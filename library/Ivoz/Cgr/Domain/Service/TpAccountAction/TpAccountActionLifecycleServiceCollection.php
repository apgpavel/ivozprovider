<?php

namespace Ivoz\Cgr\Domain\Service\TpAccountAction;

use Ivoz\Core\Domain\Service\LifecycleServiceCollectionInterface;
use Ivoz\Core\Domain\Service\LifecycleServiceCollectionTrait;

/**
 * @codeCoverageIgnore
 */
class TpAccountActionLifecycleServiceCollection implements LifecycleServiceCollectionInterface
{
    use LifecycleServiceCollectionTrait;

    public static $bindedBaseServices = [
        "on_commit" =>     [
            \Ivoz\Cgr\Domain\Service\TpAccountAction\UpdatedTpAccountActionNotificator::class => 200,
        ],
    ];

    protected function addService(string $event, TpAccountActionLifecycleEventHandlerInterface $service)
    {
        $this->services[$event][] = $service;
    }
}

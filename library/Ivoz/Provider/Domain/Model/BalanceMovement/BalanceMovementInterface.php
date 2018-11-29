<?php

namespace Ivoz\Provider\Domain\Model\BalanceMovement;

use Ivoz\Core\Domain\Model\LoggableEntityInterface;

interface BalanceMovementInterface extends LoggableEntityInterface
{
    /**
     * @codeCoverageIgnore
     * @return array
     */
    public function getChangeSet();

    /**
     * Get amount
     *
     * @return string
     */
    public function getAmount();

    /**
     * Get balance
     *
     * @return string
     */
    public function getBalance();

    /**
     * Get createdOn
     *
     * @return \DateTime
     */
    public function getCreatedOn();

    /**
     * Set company
     *
     * @param \Ivoz\Provider\Domain\Model\Company\CompanyInterface $company
     *
     * @return self
     */
    public function setCompany(\Ivoz\Provider\Domain\Model\Company\CompanyInterface $company = null);

    /**
     * Get company
     *
     * @return \Ivoz\Provider\Domain\Model\Company\CompanyInterface
     */
    public function getCompany();

    /**
     * Set carrier
     *
     * @param \Ivoz\Provider\Domain\Model\Carrier\CarrierInterface $carrier
     *
     * @return self
     */
    public function setCarrier(\Ivoz\Provider\Domain\Model\Carrier\CarrierInterface $carrier = null);

    /**
     * Get carrier
     *
     * @return \Ivoz\Provider\Domain\Model\Carrier\CarrierInterface
     */
    public function getCarrier();
}

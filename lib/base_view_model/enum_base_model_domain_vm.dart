enum EnumBaseModelDomainVM {
  insertModelToLocalDatabaseForOneEntryThereIsParameter,
  getModelFromLocalDatabaseForOneEntry,
  deleteModelToLocalDatabaseForOneEntry,

  insertModelToLocalDatabaseThereIsParameter,
  updateModelToLocalDatabaseThereIsParameter,
  deleteModelToLocalDatabaseThereIsParameter,
  getModelFromLocalDatabaseThereIsParameter,
  /* No Notify Stream Method to FVUFVM */
  getListModelFromLocalDatabaseThereIsParameterAndNoThereIsParameter,

  insertModelToNetworkDatabaseThereIsParameter,
  updateModelToNetworkDatabaseThereIsParameter,
  deleteModelToNetworkDatabaseThereIsParameter,
  getModelFromNetworkDatabaseThereIsParameter,
  /* No Notify Stream Method to FVUFVM */
  getListModelFromNetworkDatabaseThereIsParameterAndNoThereIsParameter,

  pushNotificationToZonedScheduleThereIsParameter,
  pushNotificationToShowThereIsParameter,
  cancelNotificationThereIsParameter
}
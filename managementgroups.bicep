targetScope = 'managementGroup'

@description('Management group hierarchy')
param managementGroupHierarchy array = [
  {
    groupName: 'Contoso'
    children: [
      {
        groupName: 'Platform'
        children: [
          {
            groupName: 'Identity'
          }
          {
            groupName: 'Management'
          }
          {
            groupName: 'Connectivity'
          }
        ]
      }
      {
        groupName: 'LandingZones'
        children: [
          {
            groupName: 'SAP'
          }
          {
            groupName: 'Corp'
          }
          {
            groupName: 'Online'
          }
        ]
      }
      {
        groupName: 'Decomissioned'
      }
      {
        groupName: 'Sandbox'
      }
    ]
  }
]

module createManagementGroups './managementGroups.json' = {
  name: 'createManagementGroups'
  params: {
    managementGroupHierarchy: managementGroupHierarchy
  }
}

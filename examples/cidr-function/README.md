# CIDR function

Example composed resource:

```yaml
Name:         xcell
Namespace:    
Labels:       crossplane.io/composite=xcell
Annotations:  <none>
API Version:  infra.kszpakowski.com/v1alpha1
Kind:         xCell
Metadata:
  Creation Timestamp:  2025-05-06T21:53:47Z
  Finalizers:
    composite.apiextensions.crossplane.io
  Generation:        12
  Resource Version:  454172
  UID:               71cf908d-2dbb-4a15-a40e-1a3ef0ee485a
Spec:
  Cidr Block:  10.0.0.0/20
  Composition Ref:
    Name:  xcell
  Composition Revision Ref:
    Name:                     xcell-cb58a5a
  Composition Update Policy:  Automatic
  Region:                     us-east-1
  Resource Refs:
Status:
  At Function:
    Cidr:
      Partitions:
        10.0.0.0/24
        10.0.1.0/24
        10.0.4.0/22
        10.0.8.0/22
  Conditions:
    Last Transition Time:  2025-05-06T22:08:51Z
    Reason:                ReconcileSuccess
    Status:                True
    Type:                  Synced
    Last Transition Time:  2025-05-06T21:54:52Z
    Reason:                Available
    Status:                True
    Type:                  Ready

```

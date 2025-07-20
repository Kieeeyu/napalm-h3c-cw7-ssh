Value Filldown NETWORK (\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})
Value Filldown PREFIX_LENGTH (\d{1,2})
Value Filldown PROTOCOL (\w+)
Value Filldown PREFERENCE (\d{1,3})
Value Filldown COST (\d+)
Value Required NEXTHOP_IP (\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})
Value NEXTHOP_IF (\S+)

Start
  ^Destination\/Mask -> Routes

Routes
  ^${NETWORK}\/${PREFIX_LENGTH}\s+${PROTOCOL}\s+${PREFERENCE}\s+${COST}\s+${NEXTHOP_IP}\s+${NEXTHOP_IF} -> Record
  # for comware v7 ecmp
  ^\s+${NEXTHOP_IP}\s+${NEXTHOP_IF} -> Record
  # for comware v5 ecmp
  ^\s+${PROTOCOL}\s+${PREFERENCE}\s+${COST}\s+${NEXTHOP_IP}\s+${NEXTHOP_IF} -> Record
  ^\s*$$
  ^. -> Error

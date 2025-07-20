Value Required INTERFACE (\S+)
Value TRANSCEIVER_SERIAL_NUMBER (\S+)
Value VENDOR (\S+)

Start
  ^${INTERFACE}\s+transceiver\s+manufacture\s+information:
  ^The\s+transceiver\s+is\s+absent\. -> Record
  ^The\s+transceiver\s+does\s+not\s+support\s+this\s+function. -> Record
  ^The\s+operation\s+is\s+not\s+supported. -> Record
  ^\s+Manu\.\s+Serial\s+Number\s+:\s+${TRANSCEIVER_SERIAL_NUMBER}
  ^\s+Vendor\s+Name\s+:\s+${VENDOR} -> Record
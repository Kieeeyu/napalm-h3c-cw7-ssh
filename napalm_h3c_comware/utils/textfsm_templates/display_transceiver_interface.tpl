Value Required INTERFACE (\S+)
Value TRANSCEIVER_TYPE (\S+)
Value CONNECTOR (\S+)
Value WAVELENGTH (\d+)
Value DISTANCE (.+)
Value DDM (YES|NO)
Value VENDOR (\S+)

Start
  ^${INTERFACE}\s+transceiver\s+information:
  ^The\s+transceiver\s+is\s+absent\. -> Record
  ^The\s+operation\s+is\s+not\s+supported. -> Record
  ^\s+Transceiver\s+Type\s+:\s+${TRANSCEIVER_TYPE}
  ^\s+Connector\s+Type\s+:\s+${CONNECTOR}
  ^\s+Wavelength\(nm\)\s+:\s+${WAVELENGTH}
  ^\s+Transfer\s+Distance.*:\s+${DISTANCE}
  ^\s+Digital\s+Diagnostic\s+Monitoring\s+:\s+${DDM}
  ^\s+Vendor\s+Name\s+:\s+${VENDOR} -> Record
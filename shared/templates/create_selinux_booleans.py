#!/usr/bin/python2

#
# create_selinux_booleans.py
#   automatically generate checks for selinux booleans

import sys
import re


from template_common import FilesGenerator, UnknownTargetError

PENDING = '>SEBOOL_BOOL</linux:pending_status'
CURRENT = '>SEBOOL_BOOL</linux:current_status'
EXTERN_VAR = '''</linux:selinuxboolean_state>

  <external_variable comment="external variable for %s"
  datatype="boolean" id="var_%s" version="1" />
'''

class SEBoolGenerator(FilesGenerator):

    def generate(self, target, sebool_info):
        sebool_name, sebool_state = sebool_info
        # convert variable name to a format suitable for 'id' tags
        sebool_id = re.sub('[-\.]', '_', sebool_name)
        (sebool_state, sebool_bool) = self._bool_state(sebool_state)
        if not sebool_state:
            pass
        else:
            if target == "oval":
                if sebool_state != "use_var":
                    self.file_from_template(
                        "./template_OVAL_sebool",
                        {
                            "SEBOOLID" : sebool_id,
                            "SEBOOL_BOOL" : sebool_bool
                        },
                        "./oval/sebool_{0}.xml", sebool_id)
                else:
                    self.file_from_template(
                        "./template_OVAL_sebool",
                        {
                            "SEBOOLID" : sebool_id,
                            CURRENT: ' var_ref="var_%s" /' % sebool_id,
                            PENDING: ' var_ref="var_%s" /' % sebool_id,
                            "</linux:selinuxboolean_state>": EXTERN_VAR % (sebool_id, sebool_id),
                        },
                        "./oval/sebool_{0}.xml", sebool_id
                    )

            else:
                raise UnknownTargetError(target)

    def csv_format(self):
        return("CSV should contains lines of the format: " +
                   "seboolvariable,seboolstate")

    def _bool_state(self, sebool_state):
        sebool = ""
        sebool_state = re.sub(' ', '', sebool_state)

        if sebool_state == "on" or sebool_state == "enable":
            sebool_state = "enabled"
        elif sebool_state == "off" or sebool_state == "disable":
            sebool_state = "disabled"
        elif sebool_state == "use_var" or sebool_state == "":
            pass
        else:
            print("Error: Invalid SELinux state value: %s" % sebool_state)
            sys.exit()

        if sebool_state == "enabled":
            sebool = "true"
        if sebool_state == "disabled":
            sebool = "false"

        return sebool_state, sebool

if __name__ == "__main__":
    SEBoolGenerator().main()

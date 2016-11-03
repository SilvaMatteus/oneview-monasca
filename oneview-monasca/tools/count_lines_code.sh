#!/usr/bin/env bash
# (c) Copyright 2016 Hewlett Packard Enterprise Development LP
# Copyright 2016 Universidade Federal de Campina Grande
#
#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.

# count lines of file that not initialize by '#'
TOTAL_LINE_MODULES=$(find $1  \( -name '*.py' \) -exec grep -c -v '\(#\)' {} \;)

total_lines_package=0
for total_lines_module in $TOTAL_LINE_MODULES
do
  total_lines_package=$(($total_lines_package + $total_lines_module));
done

echo "Package [$1] has [$total_lines_package] lines."
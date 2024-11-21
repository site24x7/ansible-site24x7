#!/bin/bash

AGENT_HOME=/opt/site24x7/monagent
SCRIPT_LOG_PATH=/opt/site24x7-agent-status.txt
DOWN_MSG="Site24x7 monitoring agent service is down"


checkAgentStatus() {
	AGENT_STATUS_OP=`/opt/site24x7/monagent/bin/monagent status 2>> $SCRIPT_LOG_PATH`
    if [[ $DOWN_MSG == $AGENT_STATUS_OP ]]; then
        echo "$(date +'%Y-%m-%d %H:%M:%S')  Agent status down, Hence starting Agent" >> $SCRIPT_LOG_PATH
        /opt/site24x7/monagent/bin/monagent start 2>> $SCRIPT_LOG_PATH
        AGENT_STATUS_OP=`/opt/site24x7/monagent/bin/monagent status 2>> $SCRIPT_LOG_PATH`
        echo "$(date +'%Y-%m-%d %H:%M:%S')  $AGENT_STATUS_OP " >> $SCRIPT_LOG_PATH
    fi
}

if ! [ -d $AGENT_HOME ]; then
    echo "$(date +'%Y-%m-%d %H:%M:%S')  Agent directory not present, kindly check installation" >> $SCRIPT_LOG_PATH
else
    checkAgentStatus
fi

# Interacts with JIRA
#
# jira new <PROJECT> <SUMMARY> - Opens a new JIRA ticket for project

JiraClient = require('node-jira/lib/jira_client')
JiraSettings =
        user: process.env.HUBOT_JIRA_USERNAME
        pass: process.env.HUBOT_JIRA_PASSWORD
        host: process.env.HUBOT_JIRA_BASE_URL
        priority: process.env.HUBOT_JIRA_PRIORITY || "Minor"
        type: process.env.HUBOT_JIRA_ISSUE_TYPE || "Emergent Task"
JiraRPC = new JiraClient.JiraRPC JiraSettings.user, JiraSettings.pass, JiraSettings.host
JiraREST = new JiraClient.JiraREST JiraSettings.user, JiraSettings.password, JiraSettings.host

module.exports = (robot) ->
        robot.respond /jira check/i, (msg) ->
                JiraRPC.call 'login', [JiraRPC.username, JiraRPC.password], (error, response) ->
                        if error then msg.send "ERROR: #{error}" else msg.send "JIRA A-OK BOSS"

        # robot.respond /jira (\w+-\d+) reporter (\S+)/i, (msg) ->
        #         remote_field_value =
        #                 id: 'reporter'
        #                 value: msg.match[2]
        #         update = [msg.match[1], ['RemoteFieldValue':remote_field_value]]
        #         msg.send update
        #         JiraRPC.call 'updateIssue', update, (error, response) ->
        #                if response then msg.send "updated reporter of #{response.key} to #{response.reporter}" else msg.send "Changing reporter failed: #{error}"

        robot.respond /jira (\w+-\d+) comment (.*)/i, (msg) ->
                comment = body: "#{msg.message.user.id} via chat: #{msg.match[2]}"
                JiraRPC.call 'addComment', [msg.match[1], comment], (error, response) ->
                        if error then msg.send "Adding comment failed: #{error}" else msg.send "Added comment to #{response.key}"

                # addReporterComment = (response) ->
                #         JiraRPC.call 'addComment', [response.key, "Added via Jabber from #{msg.message.user.name}"], (error, response) ->
                #                 if error then msg.send "Adding comment failed, but..."
                #                 msg.send "#{JiraSettings.host}browse/#{response.key}"

        robot.respond /jira new (\w+) (.+)/i, (msg) ->
                createIssue = (key, summary, project, priority, issue_type) ->
                        issue =
                                project: project.key
                                type: issue_type.id
                                priority: priority.id
                                summary: summary
                        JiraRPC.call 'createIssue', [issue], (error, response) ->
                                if response then msg.send "#{JiraSettings.host}browse/#{response.key}" else msg.send "Couldn't make the ticket."


                getIssueType = (key, summary, project, priority) ->
                        JiraRPC.call 'getIssueTypesForProject', [project.id], (error, response) ->
                                if error
                                        msg.send "ERROR: #{error}"
                                else
                                        issue_types = (issue_type for issue_type in response when issue_type.name is JiraSettings.type)
                                        createIssue(key, summary, project, priority, issue_types[0])

                getPriority = (key, summary, project) ->
                        JiraRPC.call 'getPriorities', [], (error, response) ->
                                if error
                                        msg.send "ERROR: #{error}"
                                else
                                        priorities = (priority for priority in response when priority.name is JiraSettings.priority)
                                        getIssueType(key, summary, project, priorities[0])

                getProject = (key, summary) ->
                        JiraRPC.call 'getProjectByKey', [key], (error, response) ->
                                if error
                                        msg.send "ERROR: #{error}"
                                else
                                        getPriority(key, summary, response)

                getProject(msg.match[1], msg.match[2])
        robot.respond /jira search (.+)/i, (msg) ->
                JiraREST.get 'search', {jql: msg[1]}, (error, data) ->
                        msg.send "Searching..."
                        if error
                                msg.send "ERROR: #{error}"
                        else
                                var util = require('util')
                                util.inspect(data)
                                for issue in data['issues']
                                        msg.send "#{issue['key']}: #{issue['fields']['summary']}"
                        msg.send "Searched!"

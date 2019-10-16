# ReduxUnderstanding

# What is Redux?
Redux does separation of concerns like MVC. The difference is the dataflow and the state-management. It has a specific place where the state lives (the store) and where the state gets updated (the reducers). The dataflow is unidirectional. That means your data gets processed in one-direction. The idea behind it is that your subscribers (e. g. ViewController) only listens for updates and doesn’t manipulate the data it receives.
# State
The state represents the state of your app. States contain substates like a navigationState (e. g. which view is currently active) and commonly one for each view of your app.
# Store
The store holds the entire App State and receives requests to change the state and calls reducer to perform the change. When a change has taken place, it notifies the subscriber associated to the state with the updated data.
# Action
Actions triggers state-changes. For example when a user starts a timer. Actions will be dispatched by the store, where the state lives.
# Reducer
Reducer will be notified by the store when it received an action. The reducers take the action and perform the actual state-change.
